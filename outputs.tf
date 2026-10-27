output "serviceendpoint_nugets_id" {
  description = "Map of id values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.id }
}
output "serviceendpoint_nugets_api_key" {
  description = "Map of api_key values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.api_key }
  sensitive   = true
}
output "serviceendpoint_nugets_authorization" {
  description = "Map of authorization values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.authorization }
}
output "serviceendpoint_nugets_description" {
  description = "Map of description values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.description }
}
output "serviceendpoint_nugets_feed_url" {
  description = "Map of feed_url values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.feed_url }
}
output "serviceendpoint_nugets_password" {
  description = "Map of password values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.password }
  sensitive   = true
}
output "serviceendpoint_nugets_personal_access_token" {
  description = "Map of personal_access_token values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.personal_access_token }
  sensitive   = true
}
output "serviceendpoint_nugets_project_id" {
  description = "Map of project_id values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.project_id }
}
output "serviceendpoint_nugets_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.service_endpoint_name }
}
output "serviceendpoint_nugets_username" {
  description = "Map of username values across all serviceendpoint_nugets, keyed the same as var.serviceendpoint_nugets"
  value       = { for k, v in azuredevops_serviceendpoint_nuget.serviceendpoint_nugets : k => v.username }
}

