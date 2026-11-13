output "enablements_id" {
  description = "Map of id values across all enablements, keyed the same as var.enablements"
  value       = { for k, v in pagerduty_enablement.enablements : k => v.id }
}
output "enablements_enabled" {
  description = "Map of enabled values across all enablements, keyed the same as var.enablements"
  value       = { for k, v in pagerduty_enablement.enablements : k => v.enabled }
}
output "enablements_entity_id" {
  description = "Map of entity_id values across all enablements, keyed the same as var.enablements"
  value       = { for k, v in pagerduty_enablement.enablements : k => v.entity_id }
}
output "enablements_entity_type" {
  description = "Map of entity_type values across all enablements, keyed the same as var.enablements"
  value       = { for k, v in pagerduty_enablement.enablements : k => v.entity_type }
}
output "enablements_feature" {
  description = "Map of feature values across all enablements, keyed the same as var.enablements"
  value       = { for k, v in pagerduty_enablement.enablements : k => v.feature }
}

