#!/bin/bash

# Initialize Terraform (download providers, prepare backend)
terraform init

# Format Terraform files for consistency
terraform fmt

# Validate the Terraform files (check for syntax errors)
terraform validate

# Show planned changes before applying
terraform plan

# Apply the plan (create/update infrastructure)
terraform apply

# Show outputs after apply (like IP addresses, URLs)
terraform output

# Destroy the infrastructure when no longer needed
terraform destroy
