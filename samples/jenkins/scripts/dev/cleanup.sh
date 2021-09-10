export PATH=$PATH:$PWD

#
# Expected environment variables:
#
# $PROJECT_ID - ID of the source project
# $DEV_SPACE_ID - ID of the development deployment space
#

find_asset () {
  echo "Searching for $1 with name: $2..." >&2
  asset_id=$(cpdctl asset search --type-name $1 --query "asset.name:$2" \
    --output json --jmes-query "results[0].metadata.asset_id" --raw-output)
  echo "Found: $asset_id" >&2
  echo $asset_id
}

model_name=gcr-scikit-model
trained_model_id_file=./trained_model_id

echo Cleaning up the project...

export CPD_SCOPE=cpd://cpd/projects/$PROJECT_ID
trained_model_id=$(<${trained_model_id_file})

echo Deleting trained model: $trained_model_id...

cpdctl ml model delete --model-id $trained_model_id
rm -f job.json
rm -f run.json

echo Cleaning up the development space...

export CPD_SCOPE=cpd://cpd/spaces/$DEV_SPACE_ID
model_id=$(find_asset wml_model "$model_name")
regression_data_asset_id=$(find_asset data_asset "credit_risk_regression.csv")
evaluation_script_id=$(find_asset script "evaluate_model")

echo Deleting promoted assets...

cpdctl ml model delete --model-id $model_id
cpdctl asset delete --asset-id $regression_data_asset_id
cpdctl asset delete --asset-id $evaluation_script_id

echo Done!
