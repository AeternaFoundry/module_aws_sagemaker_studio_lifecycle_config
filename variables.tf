variable "sagemaker_studio_lifecycle_configs" {
  description = <<EOT
Map of sagemaker_studio_lifecycle_configs, attributes below
Required:
    - studio_lifecycle_config_app_type
    - studio_lifecycle_config_content
    - studio_lifecycle_config_name
Optional:
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    studio_lifecycle_config_app_type = string
    studio_lifecycle_config_content  = string
    studio_lifecycle_config_name     = string
    region                           = optional(string)
    tags                             = optional(map(string))
    tags_all                         = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_studio_lifecycle_configs : (
        length(v.studio_lifecycle_config_content) >= 1 && length(v.studio_lifecycle_config_content) <= 16384
      )
    ])
    error_message = "must be between 1 and 16384 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_studio_lifecycle_configs : (
        (length(v.studio_lifecycle_config_name) >= 1 && length(v.studio_lifecycle_config_name) <= 63) && (can(regex("^[0-9A-Za-z](-*[0-9A-Za-z])*$", v.studio_lifecycle_config_name)))
      )
    ])
    error_message = "all of: must be between 1 and 63 characters; Valid characters are a-z, A-Z, 0-9, and - (hyphen)."
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

