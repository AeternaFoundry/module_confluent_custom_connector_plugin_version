resource "confluent_custom_connector_plugin_version" "custom_connector_plugin_versions" {
  for_each = var.custom_connector_plugin_versions

  cloud                       = each.value.cloud
  filename                    = each.value.filename
  plugin_id                   = each.value.plugin_id
  version                     = each.value.version
  documentation_link          = each.value.documentation_link
  sensitive_config_properties = each.value.sensitive_config_properties

  dynamic "connector_class" {
    for_each = each.value.connector_class
    content {
      connector_class_name = connector_class.value.connector_class_name
      connector_type       = connector_class.value.connector_type
    }
  }

  environment {
    id = each.value.environment.id
  }
}

