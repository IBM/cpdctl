export PATH=$PATH:$PWD

#
# Expected environment variables:
#
# $PROJECT_ID - ID of the source project
# $DEV_SPACE_ID - ID of the development deployment space
#

env_name=jupconda221
job_name=train-scikit-model-job
model_name=gcr-scikit-model
trained_model_id_file=./trained_model_id

export CPD_SCOPE=cpd://cpd/projects/$PROJECT_ID

find_asset () {
  echo "Searching for $1 with name: $2..." >&2
  asset_id=$(cpdctl asset search --type-name $1 --query "asset.name:$2" \
    --output json --jmes-query "results[0].metadata.asset_id" --raw-output)
  echo "Found: $asset_id" >&2
  echo $asset_id
}


training_data_asset_id=$(find_asset data_asset "credit_risk_training.csv")
regression_data_asset_id=$(find_asset data_asset "credit_risk_regression.csv")
notebook_id=$(find_asset notebook "train_model")

env_id=$(cpdctl environment list --output json -j "resources[?metadata.name=='$env_name'] | [0].metadata.asset_id" --raw-output)
echo "Using notebook environment '$env_name': $env_id"

# assume there is only single profile configured
cpd_url=$(cpdctl config profile list --output json -j '[0].Profile.URL' --raw-output)

# assume there is only single user configured
user=$(cpdctl config user list --output json -j '[0].Name' --raw-output)
user_name=$(cpdctl config user get "${user}" --output json -j 'User.Username' --raw-output)
user_apikey=$(cpdctl config user get "${user}" --output json -j "User.Apikey.Value" --raw-output)

cat > job.json <<-EOJSON
{
    "name": "$job_name",
    "asset_ref": "$notebook_id",
    "configuration": {
        "env_id": "$env_id",
        "env_type": "notebook",
        "env_variables": [
            "CPD_URL=$cpd_url",
            "USER_NAME=$user_name",
            "USER_APIKEY=$user_apikey",
            "DATA_ASSET_ID=$training_data_asset_id",
            "MODEL_NAME=$model_name"
        ]
    }
}
EOJSON

echo Staring job $job_name...

job_run=$(cpdctl job run create --job '@./job.json' --job-run '{}' --async --output json)

job_id=$(echo $job_run | jq '.entity.job_run.job_ref' -r)
run_id=$(echo $job_run | jq '.metadata.asset_id' -r)

echo "Job run: $run_id started for job: $job_id..."

cpdctl job run wait --job-id $job_id --run-id $run_id

cpdctl job run logs --job-id $job_id --run-id $run_id

trained_model_id=$(find_asset wml_model "$model_name")

echo "Model: $trained_model_id trained successfully!"

echo -n $trained_model_id > $trained_model_id_file
