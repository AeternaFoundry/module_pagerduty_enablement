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
}

