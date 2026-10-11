variable "org_log_integrations_lookup" {
  description = <<EOT
Map of org_log_integrations_lookup, attributes below
Required:
    - org_id
EOT

  type = map(object({
    org_id = string
  }))
}

