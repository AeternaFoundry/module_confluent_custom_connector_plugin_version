variable "custom_connector_plugin_versions" {
  description = <<EOT
Map of custom_connector_plugin_versions, attributes below
Required:
    - cloud
    - filename
    - plugin_id
    - version
    - connector_class (block):
        - connector_class_name (required)
        - connector_type (required)
    - environment (block):
        - id (required)
Optional:
    - documentation_link
    - sensitive_config_properties
EOT

  type = map(object({
    cloud                       = string
    filename                    = string
    plugin_id                   = string
    version                     = string
    documentation_link          = optional(string)
    sensitive_config_properties = optional(set(string))
    connector_class = list(object({
      connector_class_name = string
      connector_type       = string
    }))
    environment = object({
      id = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.custom_connector_plugin_versions : (
        length(v.connector_class) >= 1
      )
    ])
    error_message = "Each connector_class list must contain at least 1 items"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

