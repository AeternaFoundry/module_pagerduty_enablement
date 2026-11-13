variable "enablements" {
  description = <<EOT
Map of enablements, attributes below
Required:
    - entity_id
    - entity_type
    - feature
Optional:
    - enabled
EOT

  type = map(object({
    entity_id   = string
    entity_type = string
    feature     = string
    enabled     = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.enablements : (
        contains(["service", "event_orchestration"], v.entity_type)
      )
    ])
    error_message = "must be one of: \"service\", \"event_orchestration\""
  }
  validation {
    condition = alltrue([
      for k, v in var.enablements : (
        contains(["aiops"], v.feature)
      )
    ])
    error_message = "must be one of: \"aiops\""
  }
}

