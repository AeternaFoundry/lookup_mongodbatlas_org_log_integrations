output "org_log_integrations_lookup_org_id" {
  description = "Map of org_id values across all org_log_integrations_lookup, keyed the same as var.org_log_integrations_lookup except keys with no org_id are omitted"
  value       = { for k, v in data.mongodbatlas_org_log_integrations.org_log_integrations_lookup : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "org_log_integrations_lookup_results" {
  description = "Map of results values across all org_log_integrations_lookup, keyed the same as var.org_log_integrations_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_org_log_integrations.org_log_integrations_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}

