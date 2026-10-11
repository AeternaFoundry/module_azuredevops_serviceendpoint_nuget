resource "azuredevops_serviceendpoint_nuget" "serviceendpoint_nugets" {
  for_each = var.serviceendpoint_nugets

  feed_url              = each.value.feed_url
  project_id            = each.value.project_id
  service_endpoint_name = each.value.service_endpoint_name
  api_key               = each.value.api_key
  description           = each.value.description
  password              = each.value.password
  personal_access_token = each.value.personal_access_token
  username              = each.value.username

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

