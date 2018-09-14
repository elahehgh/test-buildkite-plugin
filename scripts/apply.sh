#!/bin/sh

set -xe

echo "+++ :terraform: Terraform Init"
terraform init \
    -backend-config="bucket=terraform-tfstate-elaheh"
echo "+++ :terraform: Terraform Apply"
terraform apply tfplan-test
