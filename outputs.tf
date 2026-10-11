output "custom_connector_plugin_versions_id" {
  description = "Map of id values across all custom_connector_plugin_versions, keyed the same as var.custom_connector_plugin_versions except keys with no id are omitted"
  value       = { for k, v in confluent_custom_connector_plugin_version.custom_connector_plugin_versions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "custom_connector_plugin_versions_api_version" {
  description = "Map of api_version values across all custom_connector_plugin_versions, keyed the same as var.custom_connector_plugin_versions except keys with no api_version are omitted"
  value       = { for k, v in confluent_custom_connector_plugin_version.custom_connector_plugin_versions : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "custom_connector_plugin_versions_cloud" {
  description = "Map of cloud values across all custom_connector_plugin_versions, keyed the same as var.custom_connector_plugin_versions except keys with no cloud are omitted"
  value       = { for k, v in confluent_custom_connector_plugin_version.custom_connector_plugin_versions : k => v.cloud if v.cloud != null && length(v.cloud) > 0 }
}
output "custom_connector_plugin_versions_connector_class" {
  description = "Map of connector_class values across all custom_connector_plugin_versions, keyed the same as var.custom_connector_plugin_versions except keys with no connector_class are omitted"
  value       = { for k, v in confluent_custom_connector_plugin_version.custom_connector_plugin_versions : k => v.connector_class if v.connector_class != null && length(v.connector_class) > 0 }
}
output "custom_connector_plugin_versions_documentation_link" {
  description = "Map of documentation_link values across all custom_connector_plugin_versions, keyed the same as var.custom_connector_plugin_versions except keys with no documentation_link are omitted"
  value       = { for k, v in confluent_custom_connector_plugin_version.custom_connector_plugin_versions : k => v.documentation_link if v.documentation_link != null && length(v.documentation_link) > 0 }
}
output "custom_connector_plugin_versions_environment" {
  description = "Map of environment values across all custom_connector_plugin_versions, keyed the same as var.custom_connector_plugin_versions except keys with no environment are omitted"
  value       = { for k, v in confluent_custom_connector_plugin_version.custom_connector_plugin_versions : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "custom_connector_plugin_versions_filename" {
  description = "Map of filename values across all custom_connector_plugin_versions, keyed the same as var.custom_connector_plugin_versions except keys with no filename are omitted"
  value       = { for k, v in confluent_custom_connector_plugin_version.custom_connector_plugin_versions : k => v.filename if v.filename != null && length(v.filename) > 0 }
}
output "custom_connector_plugin_versions_kind" {
  description = "Map of kind values across all custom_connector_plugin_versions, keyed the same as var.custom_connector_plugin_versions except keys with no kind are omitted"
  value       = { for k, v in confluent_custom_connector_plugin_version.custom_connector_plugin_versions : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "custom_connector_plugin_versions_plugin_id" {
  description = "Map of plugin_id values across all custom_connector_plugin_versions, keyed the same as var.custom_connector_plugin_versions except keys with no plugin_id are omitted"
  value       = { for k, v in confluent_custom_connector_plugin_version.custom_connector_plugin_versions : k => v.plugin_id if v.plugin_id != null && length(v.plugin_id) > 0 }
}
output "custom_connector_plugin_versions_sensitive_config_properties" {
  description = "Map of sensitive_config_properties values across all custom_connector_plugin_versions, keyed the same as var.custom_connector_plugin_versions except keys with no sensitive_config_properties are omitted"
  value       = { for k, v in confluent_custom_connector_plugin_version.custom_connector_plugin_versions : k => v.sensitive_config_properties if v.sensitive_config_properties != null && length(v.sensitive_config_properties) > 0 }
}
output "custom_connector_plugin_versions_version" {
  description = "Map of version values across all custom_connector_plugin_versions, keyed the same as var.custom_connector_plugin_versions except keys with no version are omitted"
  value       = { for k, v in confluent_custom_connector_plugin_version.custom_connector_plugin_versions : k => v.version if v.version != null && length(v.version) > 0 }
}

