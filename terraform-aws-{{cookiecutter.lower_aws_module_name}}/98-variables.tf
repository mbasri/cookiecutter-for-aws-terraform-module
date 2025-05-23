variable "{{ cookiecutter.underscore_aws_module_name + '_name' }}" {
  description = "{{ 'Name that will be assigned to the ' + cookiecutter.title_aws_module_name }}"
  type        = string
}

variable "description" {
  description = "{{ 'The description of the ' + cookiecutter.title_aws_module_name + ' as viewed in AWS console' }}"
  type        = string
  default     = null
}

variable "kms_arn" {
  description = "{{ 'KMS ARN to be used to encrypt ' + cookiecutter.title_aws_module_name }}"
  type        = string
  default     = null
}

variable "tags" {
  type        = map(any)
  description = "Mapping of tags to assign to resources"
  default     = null
}
