#---------------------------------------------------------------------------------------------------
# Terraform CHANGELOG : https://github.com/hashicorp/terraform/blob/master/CHANGELOG.md
# Provider AWS CHANGELOG : https://github.com/hashicorp/terraform-provider-aws/blob/main/CHANGELOG.md
#---------------------------------------------------------------------------------------------------
terraform {
  required_version = "{{cookiecutter._terraform_version}}"

  required_providers {
    aws = "{{cookiecutter._aws_provider_version}}"
  }
}
