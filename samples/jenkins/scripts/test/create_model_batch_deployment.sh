export PATH=$PATH:$PWD

#
# Expected environment variables:
#
#
test_space_id_file=./test-space-id
job_name=model_batch_deployment_job
scoring_results=scoring_results.csv

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

model_batch_deployment_id=$(cpdctl ml deployment create --space-id "$test_space_id" --name 'model_batch_deployment'\
  --asset '{"id": "'$imported_model_id'"}' --hardware-spec '{"name": "S"}' --batch '{}' \
  --output json -j "metadata.id" --raw-output)

echo "Batch deployment: $model_batch_deployment_id created for an asset: $imported_model_id..."

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
        "name": "$scoring_results"
      }
    }
}
EOJSON

echo "Starting job $job_name..."

deployment_job_id=$(cpdctl ml deployment-job create wait --space-id "$test_space_id" --name $job_name\
  --deployment '{"id": "'$model_batch_deployment_id'"}' --scoring '@./scoring.json' \
  --output json -j "metadata.id" --raw-output)

while [[ "$job_id" == "" || "$job_id" == "null" ]]; do
  deployment_job=$(cpdctl ml deployment-job get --space-id "$test_space_id" --job-id "$deployment_job_id" --output json)
  job_id=$(echo $deployment_job | jq '.entity.platform_job.job_id' -r)
  run_id=$(echo $deployment_job | jq '.entity.platform_job.run_id' -r)
  sleep 1
done

echo "Run: $run_id started for a job: $job_id..."

cpdctl job run wait --job-id "$job_id" --run-id "$run_id" --space-id "$test_space_id"

result_asset_id=$(cpdctl asset search --space-id "$test_space_id" --type-name data_asset --query "$scoring_results"\
  --output json --jmes-query "results[0].metadata.asset_id" --raw-output)

echo "Results $scoring_results : $result_asset_id for a run: $run_id..."

