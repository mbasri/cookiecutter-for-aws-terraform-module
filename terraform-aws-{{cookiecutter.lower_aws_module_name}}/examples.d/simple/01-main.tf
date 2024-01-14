provider "aws" {
  profile = "lab"
  region  = local.region
}

locals {
  region = "eu-west-3"
}

#---------------------------------------------------------------------------------------------------
# Create {{cookiecutter.title_aws_module_name}}
#---------------------------------------------------------------------------------------------------
module "{{cookiecutter.lower_aws_module_name}}" {
  source = "../../"

  {{cookiecutter.underscore_aws_module_name}}_name    = {{ 'my-' + cookiecutter.lower_aws_module_name + '-name' }}
  description = {{ 'Testing ' + cookiecutter.title_aws_module_name + ' module' }}

  tags = {
    "Name"        = {{ 'my-' + cookiecutter.lower_aws_module_name + '-name' }}
    "Description" = {{ 'Testing ' + cookiecutter.title_aws_module_name + ' module' }}

    "billing:organisation"      = "example"
    "billing:organisation-unit" = "labs"
    "billing:application"       = "test"
    "billing:environment"       = "dev"

    "security:compliance"     = "HIPAA"
    "security:data-sensitity" = "1"
    "security:encryption"     = "false"
  }
}
