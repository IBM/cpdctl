export PATH=$PATH:$PWD

#
# Expected environment variables:
#
# $PROJECT_ID - ID of the source project
# $DEV_SPACE_ID - ID of the development deployment space
#

export_file=./dev-space-assets.zip

export CPD_SCOPE=cpd://cpd/spaces/$DEV_SPACE_ID

cpdctl asset export start --assets '{"all_assets": true}' --name dev-space-all-assets --output-file "$export_file"
