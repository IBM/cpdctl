export PATH=$PATH:$PWD

#
# Expected environment variables:
#

test_space_id_file=./test-space-id

test_space_id=$(<${test_space_id_file})

echo Cleaning up the test space ${test_space_id}...

cpdctl space delete --space-id ${test_space_id}

echo Done!
