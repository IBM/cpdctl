export PATH=$PATH:$PWD

#
# Expected environment variables:
# $PROD_SPACE_ID - ID of the production deployment space
#

export CPD_SCOPE=cpd://cpd/spaces/$PROD_SPACE_ID
export_file=./evaluation_result.zip

find_asset () {
  echo "Searching for $1 with name: $2..." >&2
  asset_id=$(cpdctl asset search --type-name $1 --query "asset.name:$2" \
    --output json --jmes-query "results[0].metadata.asset_id" --raw-output)
  echo "Found: $asset_id" >&2
  echo $asset_id
}

prod_evaluation_script_id=$(find_asset script "evaluate_model.py")

evaluate_model_job_id=$(find_asset job "evaluate_model_job")

echo "Run starting for a job: $evaluate_model_job_id..."

cpdctl job run create --job-id "$evaluate_model_job_id" --job-run '{}'

results_asset_id=$(find_asset data_asset "evaluation_result.zip")

results_attachment_id=$(cpdctl asset get --asset-id $results_asset_id --output json --jmes-query "attachments[-1].id" --raw-output)

echo "Downloading: evaluation_result.zip to the $export_file..."

cpdctl asset attachment download --asset-id "$results_asset_id" --attachment-id "$results_attachment_id" --output-path "${export_file}"

echo "Unziping $export_file"

unzip -p ${export_file}
