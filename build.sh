#!/bin/bash
packer build -machine-readable packer.json | tee build.log
AMI_ID=`awk 'END {print $NF}' build.log`
echo 'variable "AMI_ID" { default = "'${AMI_ID}'" }' > amivar.tf
terraform init
terraform apply --auto-approve 
