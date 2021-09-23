export PATH=$PATH:$PWD

#
# Expected environment variables:
#
# $PROJECT_ID - ID of the source project
# $DEV_SPACE_ID - ID of the development deployment space
#

export_file=./dev-space-assets.zip

export CPD_SCOPE=cpd://cpd/spaces/$DEV_SPACE_ID

# TODO: replace the below code with:
# cpdctl asset export start --assets '{"all_assets": true}' --name dev-space-all-assets --output-file "$export_file"
# when https://github.ibm.com/AILifecycle/tracker/issues/2228 is fixed

cpdctl asset export start --assets '{"all_assets": true}' --name dev-space-all-assets
export_id=$(cpdctl asset export list --output json --jmes-query 'resources[-1].metadata.id' --raw-output)
cpdctl asset export download --export-id ${export_id} --output-file "${export_file}"

unzip -t ${export_file}