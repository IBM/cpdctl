export PATH=$PATH:$PWD

#
# Expected environment variables:
#
# $PROJECT_ID - ID of the source project
# $DEV_SPACE_ID - ID of the development deployment space
#

export_file=./dev-space-assets.zip
test_space_id_file=./test-space-id

ls -al
unzip -l ${export_file}

timestamp=$(date "+%Y%m%d-%H%M%S")
test_space_name="test-space-${timestamp}"

cpdctl space create --name ${test_space_name} --output json --jmes-query "metadata.id" --raw-output > ${test_space_id_file}

test_space_id=$(<${test_space_id_file})

echo "Test space '${test_space_name}' created: ${test_space_id}"

export CPD_SCOPE=cpd://cpd/spaces/$test_space_id

cpdctl asset import start --import-file ${export_file}
