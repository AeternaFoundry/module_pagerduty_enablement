resource "pagerduty_enablement" "enablements" {
  for_each = var.enablements

  entity_id   = each.value.entity_id
  entity_type = each.value.entity_type
  feature     = each.value.feature
  enabled     = each.value.enabled
}

