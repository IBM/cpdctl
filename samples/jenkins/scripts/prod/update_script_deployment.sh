export PATH=$PATH:$PWD

#
# Expected environment variables:
# $PROD_SPACE_ID - ID of the production deployment space
#

deployment_name="script-batch-deployment"
results_path='prod_job_results.zip'
evaluation_output_name=evaluation_result.zip

export CPD_SCOPE=cpd://cpd/spaces/$PROD_SPACE_ID

find_asset () {
  echo "Searching for $1 with name: $2..." >&2
  asset_id=$(cpdctl asset search --type-name $1 --query "asset.name:$2" \
    --output json --jmes-query "results[0].metadata.asset_id" --raw-output)
  echo "Found: $asset_id" >&2
  echo $asset_id
}

prod_evaluation_script_id=$(find_asset script 'evaluate_model')
echo "Evaluation script id: $prod_evaluation_script_id"

prod_script_deployment_id=$(cpdctl ml deployment list --name "$deployment_name" --output json \
  --jmes-query 'resources[0].metadata.id' --raw-output)
echo "Existing production deployment ID: $prod_script_deployment_id"

asset='{"id": "'$prod_evaluation_script_id'"}'

cpdctl ml deployment update --deployment-id "$prod_script_deployment_id" --asset "$asset"

prod_job_id=$(cpdctl ml deployment-job list --deployment-id "$prod_script_deployment_id" --output json \
  --jmes-query 'resources[0].entity.platform_job.job_id' --raw-output)
echo "Production job ID: $prod_job_id"

prod_run_id=$(cpdctl job run create --job-id "$prod_job_id" --job-run '{}' --output json \
  --jmes-query 'metadata.asset_id' --raw-output)
echo "ID of the job run in production space: $prod_run_id"

cpdctl job run wait --job-id "$prod_job_id" --run-id "$prod_run_id"

output_data_asset_id=$(find_asset data_asset "$evaluation_output_name")

echo "Results : $output_data_asset_id for a run: $run_id..."

results_attachment_id=$(cpdctl asset get --asset-id "$output_data_asset_id" \
  --output json --jmes-query "attachments[-1].id" --raw-output)

echo "Downloading: $evaluation_output_name to the $results_path..."

cpdctl asset attachment download --asset-id "$output_data_asset_id" \
  --attachment-id "$results_attachment_id" --output-path "$results_path"

echo "Unziping $results_path to results.txt"

unzip -p "$results_path" results.txt
