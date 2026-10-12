output "enablements_id" {
  description = "Map of id values across all enablements, keyed the same as var.enablements except keys with no id are omitted"
  value       = { for k, v in pagerduty_enablement.enablements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "enablements_enabled" {
  description = "Map of enabled values across all enablements, keyed the same as var.enablements except keys with no enabled are omitted"
  value       = { for k, v in pagerduty_enablement.enablements : k => v.enabled if v.enabled != null }
}
output "enablements_entity_id" {
  description = "Map of entity_id values across all enablements, keyed the same as var.enablements except keys with no entity_id are omitted"
  value       = { for k, v in pagerduty_enablement.enablements : k => v.entity_id if v.entity_id != null && length(v.entity_id) > 0 }
}
output "enablements_entity_type" {
  description = "Map of entity_type values across all enablements, keyed the same as var.enablements except keys with no entity_type are omitted"
  value       = { for k, v in pagerduty_enablement.enablements : k => v.entity_type if v.entity_type != null && length(v.entity_type) > 0 }
}
output "enablements_feature" {
  description = "Map of feature values across all enablements, keyed the same as var.enablements except keys with no feature are omitted"
  value       = { for k, v in pagerduty_enablement.enablements : k => v.feature if v.feature != null && length(v.feature) > 0 }
}

