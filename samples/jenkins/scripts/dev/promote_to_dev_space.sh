export PATH=$PATH:$PWD

#
# Expected environment variables:
#
# $PROJECT_ID - ID of the source project
# $DEV_SPACE_ID - ID of the development deployment space
#

env_name=jupconda38
job_name=train-scikit-model-job
trained_model_id_file=./trained_model_id

export CPD_SCOPE=cpd://cpd/projects/$PROJECT_ID

find_asset () {
  echo "Searching for $1 with name: $2..." >&2
  asset_id=$(cpdctl asset search --type-name $1 --query "asset.name:$2" \
    --output json --jmes-query "results[0].metadata.asset_id" --raw-output)
  echo "Found: $asset_id" >&2
  echo $asset_id
}

promote_asset () {
  echo "Promoting $1 with ID: $2 to development space $DEV_SPACE_ID..." >&2
  promote="{\"space_id\": \"$DEV_SPACE_ID\"}"
  cpdctl asset promote --asset-id $2 --request-body "$promote"
}

trained_model_id=$(<${trained_model_id_file})
regression_data_asset_id=$(find_asset data_asset "credit_risk_regression.csv")
evaluation_script_id=$(find_asset script "evaluate_model*")

promote_asset "trained model" $trained_model_id
promote_asset "regression data asset" $regression_data_asset_id
promote_asset "evaluation script" $evaluation_script_id

export CPD_SCOPE=cpd://cpd/spaces/$DEV_SPACE_ID

cpdctl asset search --query '*:*' --type-name asset
