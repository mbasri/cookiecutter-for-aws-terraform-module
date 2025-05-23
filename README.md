# Cookiecutter For AWS Terraform Module

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Cookiecutter template to manage consistent creation of Terraform modules

## Requirements

* [cookiecutter](https://cookiecutter.readthedocs.io)

## Usage

### Local execution
```shell
git clone https://github.com/mbasri/cookiecutter-for-aws-terraform-module.git
cd cookiecutter-for-aws-terraform-module
cookiecutter .
# You will be prompted for basic info (aws_module_name) which will be used in the template.
# Keep default variable (lower_aws_module_name, title_aws_module_name, underscore_aws_module_name) value
```

### Remote execution
```shell
cookiecutter gh:mbasri/cookiecutter-for-aws-terraform-module
# You will be prompted for basic info (aws_module_name) which will be used in the template.
# Keep default variable (lower_aws_module_name, title_aws_module_name, underscore_aws_module_name) value
```

## Author

* [**Mohamed BASRI**](https://github.com/mbasri)

## License

This is free and unencumbered software released into the public domain - see the [LICENSE](./LICENSE) file for details
