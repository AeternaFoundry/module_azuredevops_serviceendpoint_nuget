variable "serviceendpoint_nugets" {
  description = <<EOT
Map of serviceendpoint_nugets, attributes below
Required:
    - feed_url
    - project_id
    - service_endpoint_name
Optional:
    - api_key
    - description
    - password
    - personal_access_token
    - username
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    feed_url              = string
    project_id            = string
    service_endpoint_name = string
    api_key               = optional(string)
    description           = optional(string)
    password              = optional(string)
    personal_access_token = optional(string)
    username              = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_nugets : (
        v.api_key == null || (length(v.api_key) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_nugets : (
        v.personal_access_token == null || (length(v.personal_access_token) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_nugets : (
        v.username == null || (length(v.username) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_nugets : (
        v.password == null || (length(v.password) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

