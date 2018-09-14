#!/bin/sh

set -xe

echo "+++ :terraform: Terraform Init"
terraform init \
    -backend-config="bucket=terraform-tfstate-elaheh"
echo "+++ :terraform: Terraform Plan"
#terraform plan -var-file=vars/${TARGET_ACCOUNT_NAME}.tfvars -out=tfplan-${TARGET_ACCOUNT_NAME}
terraform plan -out=tfplan-test
