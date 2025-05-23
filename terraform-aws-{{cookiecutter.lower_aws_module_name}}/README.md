<!-- BEGIN_TF_DOCS -->
# AWS {{cookiecutter.title_aws_module_name}} Terraform module

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Terraform module which create {{cookiecutter.title_aws_module_name}} resources on AWS.

## Examples

### Simple
```hcl
module "{{cookiecutter.lower_aws_module_name}}" {
  source = "{{ 'git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-' + cookiecutter.lower_aws_module_name + '?ref=v1.0.0' }}"

  {{cookiecutter.underscore_aws_module_name}}_name = "{{ 'my-' + cookiecutter.lower_aws_module_name + '-name' }}"

  description = "{{ 'Testing ' + cookiecutter.title_aws_module_name +' module' }}"

  tags = {
    "Name"        = "{{ 'my-' + cookiecutter.lower_aws_module_name + '-name' }}"
    "Description" = "{{ 'Testing ' + cookiecutter.title_aws_module_name +' module' }}"

    "billing:Organisation"     = "example"
    "billing:OrganisationUnit" = "labs"
    "billing:Application"      = "test"
    "billing:Environment"      = "dev"
    
    "security:Compliance"      = "HIPAA"
    "security:DataSensitity"   = "1"
    "security:Encryption"      = "false"
  }
}
```

## Others

More examples are available on this GIT repository in the folder [`examples.d`](https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-{{cookiecutter.lower_aws_module_name}}/-/tree/master/examples.d)

## Generate docs

```shell
terraform-docs -c .terraform-docs.yml .
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= {{cookiecutter._terraform_version}} |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= {{cookiecutter._aws_provider_version}} |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= {{cookiecutter._aws_provider_version}} |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|

## Outputs

| Name | Description |
|------|-------------|

## Author

* [**Mohamed BASRI**](https://github.com/mbasri)

## License

This is free and unencumbered software released into the public domain - see the [LICENSE](./LICENSE) file for details
<!-- END_TF_DOCS -->