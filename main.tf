data "mongodbatlas_org_log_integrations" "org_log_integrations_lookup" {
  for_each = var.org_log_integrations_lookup

  org_id = each.value.org_id
}

