export PATH=$PATH:$PWD

#
# Expected environment variables:
#

job_name='evaluate_model_batch_deployment_job'
deployment_name='evaluate_model_batch_deployment'
results_path='job_results.zip'
evaluation_output_name=model_evaluation_result.zip
test_space_id_file=./test-space-id

find_asset () {
  echo "Searching for $1 with name: $2..." >&2
  asset_id=$(cpdctl asset search --space-id $3 --type-name $1 --query "asset.name:$2" \
    --output json --jmes-query "results[0].metadata.asset_id" --raw-output)
  echo "Found: $asset_id" >&2
  echo $asset_id
}

test_space_id=$(<${test_space_id_file})

imported_model_id=$(find_asset wml_model "gcr-scikit-model" $test_space_id)
imported_script_id=$(find_asset script "evaluate_model*" $test_space_id)
imported_regression_data_asset_id=$(find_asset data_asset "credit_risk_regression.csv" $test_space_id)

script_batch_deployment_id=$(cpdctl ml deployment create --space-id "$test_space_id" \
  --name $deployment_name --asset '{"id": "'$imported_script_id'"}' \
  --hardware-spec '{"name": "S"}' --batch '{}' --output json -j "metadata.id" --raw-output)

echo "Batch deployment: $script_batch_deployment_id created for an asset: $imported_script_id..."

cat > scoring.json <<-EOJSON
 {
    "input_data_references": [
      {
        "type": "data_asset",
        "id": "input",
        "connection": {},
        "location": {
          "href": "/v2/assets/$imported_regression_data_asset_id?space_id=$test_space_id"
        }
      }
    ],
    "output_data_reference": {
      "type": "data_asset",
      "id": "output",
      "connection": {},
      "location": {
        "name": "$evaluation_output_name"
      }
    }
}
EOJSON

echo "Starting job $job_name..."

deployment_script_job_id=$(cpdctl ml deployment-job create wait --space-id "$test_space_id" --name "$job_name" \
  --deployment '{"id": "'$script_batch_deployment_id'"}' --scoring '@./scoring.json' --output json -j "metadata.id" \
  --raw-output)

while [[ "$job_id" == "" || "$job_id" == "null" ]]; do
  deployment_job=$(cpdctl ml deployment-job get --space-id "$test_space_id" --job-id "$deployment_script_job_id" \
    --output json)

  job_id=$(echo $deployment_job | jq '.entity.platform_job.job_id' -r)
  run_id=$(echo $deployment_job | jq '.entity.platform_job.run_id' -r)

  sleep 1
done

echo "Run: $run_id started for a job: $job_id..."

cpdctl job run wait --job-id "$job_id" --run-id "$run_id" --space-id "$test_space_id"

output_data_asset_id=$(cpdctl asset search --space-id "$test_space_id" --type-name data_asset \
  --query "$evaluation_output_name" --output json --jmes-query "results[0].metadata.asset_id" --raw-output)

echo "Results : $output_data_asset_id for a run: $run_id..."

results_attachment_id=$(cpdctl asset get --space-id "$test_space_id" --asset-id "$output_data_asset_id" \
  --output json --jmes-query "attachments[-1].id" --raw-output)

echo "Downloading: $evaluation_output_name to the $results_path..."

cpdctl asset attachment download --space-id "$test_space_id" --asset-id "$output_data_asset_id" \
  --attachment-id "$results_attachment_id" --output-path "$results_path"

echo "Unziping $results_path to results.txt"

unzip -p "$results_path" results.txt