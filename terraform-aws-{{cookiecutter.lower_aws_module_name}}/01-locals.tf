#---------------------------------------------------------------------------------------------------
# locals variables
#---------------------------------------------------------------------------------------------------
locals {
  {{cookiecutter.underscore_aws_module_name}}_name = var.{{cookiecutter.underscore_aws_module_name}}_name

  tags = merge(
    {
      "technical:terraform" : "true",
      "technical:terraform:scm" : "none",
      "technical:terraform:required_version" : "none",
      "technical:provider:aws:required_version" : "none",
      "technical:module" : "true",
      "technical:module:scm" : "{{ 'https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-' + cookiecutter.lower_aws_module_name + '.git' }}",
      "technical:module:version" : "1.0.0",
      "technical:module:terraform:required_version" : "{{cookiecutter._terraform_version}}",
      "technical:module:provider:aws:required_version" : "{{cookiecutter._aws_provider_version}}"
  }, var.tags)
}
