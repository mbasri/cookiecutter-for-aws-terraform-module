<!-- BEGIN_TF_DOCS -->
# AWS {{cookiecutter.title_aws_module_name}} Terraform module

{{ '[![Release](https://github.com/mbasri-terraform-aws-modules/terraform-aws-' + cookiecutter.lower_aws_module_name + '/actions/workflows/release.yml/badge.svg)](https://github.com/mbasri-terraform-aws-modules/terraform-aws-' + cookiecutter.lower_aws_module_name + '/actions/workflows/release.yml)' }}
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Terraform module which create {{cookiecutter.title_aws_module_name}} resources on AWS.

## Examples

### Simple
```hcl
module "{{cookiecutter.lower_aws_module_name}}" {
  source = "{{ 'git::https://github.com/mbasri-terraform-aws-modules/terraform-aws-' + cookiecutter.lower_aws_module_name + '?ref=v1' }}"

  {{cookiecutter.underscore_aws_module_name}}_name = "{{ 'my-' + cookiecutter.lower_aws_module_name + '-name' }}"

  description = "{{ 'Testing ' + cookiecutter.title_aws_module_name +' module' }}"

  tags = {
    "Name"        = "{{ 'my-' + cookiecutter.lower_aws_module_name + '-name' }}"
    "Description" = "{{ 'Testing ' + cookiecutter.title_aws_module_name +' module' }}"

    "billing:organisation"      = "example"
    "billing:organisation-unit" = "labs"
    "billing:application"       = "test"
    "billing:environment"       = "dev"

    "security:compliance"        = "HIPAA"
    "security:data-sensitivity"  = "1"
    "security:encryption"        = "false"
  }
}
```

## Others

More examples are available on this GIT repository in the folder [`examples.d`](https://github.com/mbasri-terraform-aws-modules/terraform-aws-{{cookiecutter.lower_aws_module_name}}/tree/main/examples.d)

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
