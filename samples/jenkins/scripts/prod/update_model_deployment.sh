export PATH=$PATH:$PWD

#
# Expected environment variables:
# $PROD_SPACE_ID - ID of the production deployment space
#

export CPD_SCOPE=cpd://cpd/spaces/$PROD_SPACE_ID

prod_model_id=$(cpdctl asset search --query '*:*' --type-name wml_model --output json \
  --jmes-query "results[0].metadata.asset_id" --raw-output)
echo "Model id: $prod_model_id"

prod_model_rev=$(cpdctl ml model list-revisions --model-id "$prod_model_id" --output json \
  --jmes-query "resources[0].metadata.rev" --raw-output)
echo "Model revision: $prod_model_rev"

prod_model_batch_deployment_id=$(cpdctl ml deployment list --asset-id "$prod_model_id" --output json \
  --jmes-query "resources[0].metadata.id" --raw-output)
echo "Batch deployment id: $prod_model_batch_deployment_id"

asset='{"id": "'$prod_model_id'",
        "rev": "'$prod_model_rev'"}'

cpdctl ml deployment update --deployment-id "$prod_model_batch_deployment_id" --asset "$asset"

echo 'Updated deployed model revision:'
cpdctl ml deployment get --deployment-id "$prod_model_batch_deployment_id" --output json -j 'entity.asset'