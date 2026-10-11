output "serviceendpoint_nugets_id" {
  description = "Map of id values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets except keys with no id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "serviceendpoint_nugets_api_key" {
  description = "Map of api_key values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets except keys with no api_key are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.api_key if v.api_key != null && length(v.api_key) > 0 }
  sensitive   = true
}
output "serviceendpoint_nugets_authorization" {
  description = "Map of authorization values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets except keys with no authorization are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "serviceendpoint_nugets_description" {
  description = "Map of description values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets except keys with no description are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "serviceendpoint_nugets_feed_url" {
  description = "Map of feed_url values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets except keys with no feed_url are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.feed_url if v.feed_url != null && length(v.feed_url) > 0 }
}
output "serviceendpoint_nugets_password" {
  description = "Map of password values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets except keys with no password are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "serviceendpoint_nugets_personal_access_token" {
  description = "Map of personal_access_token values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets except keys with no personal_access_token are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.personal_access_token if v.personal_access_token != null && length(v.personal_access_token) > 0 }
  sensitive   = true
}
output "serviceendpoint_nugets_project_id" {
  description = "Map of project_id values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "serviceendpoint_nugets_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets except keys with no service_endpoint_name are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.service_endpoint_name if v.service_endpoint_name != null && length(v.service_endpoint_name) > 0 }
}
output "serviceendpoint_nugets_username" {
  description = "Map of username values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets except keys with no username are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.username if v.username != null && length(v.username) > 0 }
}

