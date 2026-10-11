output "sagemaker_studio_lifecycle_configs_id" {
  description = "Map of id values across all sagemaker_studio_lifecycle_configs, keyed the same as var.sagemaker_studio_lifecycle_configs"
  value       = { for k, v in aws_sagemaker_studio_lifecycle_config.sagemaker_studio_lifecycle_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sagemaker_studio_lifecycle_configs_arn" {
  description = "Map of arn values across all sagemaker_studio_lifecycle_configs, keyed the same as var.sagemaker_studio_lifecycle_configs"
  value       = { for k, v in aws_sagemaker_studio_lifecycle_config.sagemaker_studio_lifecycle_configs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sagemaker_studio_lifecycle_configs_region" {
  description = "Map of region values across all sagemaker_studio_lifecycle_configs, keyed the same as var.sagemaker_studio_lifecycle_configs"
  value       = { for k, v in aws_sagemaker_studio_lifecycle_config.sagemaker_studio_lifecycle_configs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_studio_lifecycle_configs_studio_lifecycle_config_app_type" {
  description = "Map of studio_lifecycle_config_app_type values across all sagemaker_studio_lifecycle_configs, keyed the same as var.sagemaker_studio_lifecycle_configs"
  value       = { for k, v in aws_sagemaker_studio_lifecycle_config.sagemaker_studio_lifecycle_configs : k => v.studio_lifecycle_config_app_type if v.studio_lifecycle_config_app_type != null && length(v.studio_lifecycle_config_app_type) > 0 }
}
output "sagemaker_studio_lifecycle_configs_studio_lifecycle_config_content" {
  description = "Map of studio_lifecycle_config_content values across all sagemaker_studio_lifecycle_configs, keyed the same as var.sagemaker_studio_lifecycle_configs"
  value       = { for k, v in aws_sagemaker_studio_lifecycle_config.sagemaker_studio_lifecycle_configs : k => v.studio_lifecycle_config_content if v.studio_lifecycle_config_content != null && length(v.studio_lifecycle_config_content) > 0 }
}
output "sagemaker_studio_lifecycle_configs_studio_lifecycle_config_name" {
  description = "Map of studio_lifecycle_config_name values across all sagemaker_studio_lifecycle_configs, keyed the same as var.sagemaker_studio_lifecycle_configs"
  value       = { for k, v in aws_sagemaker_studio_lifecycle_config.sagemaker_studio_lifecycle_configs : k => v.studio_lifecycle_config_name if v.studio_lifecycle_config_name != null && length(v.studio_lifecycle_config_name) > 0 }
}
output "sagemaker_studio_lifecycle_configs_tags" {
  description = "Map of tags values across all sagemaker_studio_lifecycle_configs, keyed the same as var.sagemaker_studio_lifecycle_configs"
  value       = { for k, v in aws_sagemaker_studio_lifecycle_config.sagemaker_studio_lifecycle_configs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sagemaker_studio_lifecycle_configs_tags_all" {
  description = "Map of tags_all values across all sagemaker_studio_lifecycle_configs, keyed the same as var.sagemaker_studio_lifecycle_configs"
  value       = { for k, v in aws_sagemaker_studio_lifecycle_config.sagemaker_studio_lifecycle_configs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

