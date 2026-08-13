variable "lightsail_distributions" {
  description = <<EOT
Map of lightsail_distributions, attributes below
Required:
    - bundle_id
    - name
    - default_cache_behavior (block):
        - behavior (required)
    - origin (block):
        - name (required)
        - protocol_policy (optional)
        - region_name (required)
Optional:
    - certificate_name
    - ip_address_type
    - is_enabled
    - region
    - tags
    - tags_all
    - cache_behavior (block):
        - behavior (required)
        - path (required)
    - cache_behavior_settings (block):
        - allowed_http_methods (optional)
        - cached_http_methods (optional)
        - default_ttl (optional)
        - forwarded_cookies (optional, block):
            - cookies_allow_list (optional)
            - option (optional)
        - forwarded_headers (optional, block):
            - headers_allow_list (optional)
            - option (optional)
        - forwarded_query_strings (optional, block):
            - option (optional)
            - query_strings_allowed_list (optional)
        - maximum_ttl (optional)
        - minimum_ttl (optional)
EOT

  type = map(object({
    bundle_id        = string
    name             = string
    certificate_name = optional(string)
    ip_address_type  = optional(string)
    is_enabled       = optional(bool)
    region           = optional(string)
    tags             = optional(map(string))
    tags_all         = optional(map(string))
    default_cache_behavior = object({
      behavior = string
    })
    origin = object({
      name            = string
      protocol_policy = optional(string)
      region_name     = string
    })
    cache_behavior = optional(list(object({
      behavior = string
      path     = string
    })))
    cache_behavior_settings = optional(object({
      allowed_http_methods = optional(string)
      cached_http_methods  = optional(string)
      default_ttl          = optional(number)
      forwarded_cookies = optional(object({
        cookies_allow_list = optional(set(string))
        option             = optional(string)
      }))
      forwarded_headers = optional(object({
        headers_allow_list = optional(set(string))
        option             = optional(string)
      }))
      forwarded_query_strings = optional(object({
        option                     = optional(bool)
        query_strings_allowed_list = optional(set(string))
      }))
      maximum_ttl = optional(number)
      minimum_ttl = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lightsail_distributions : (
        v.cache_behavior_settings == null || (v.cache_behavior_settings.allowed_http_methods == null || (can(regex(".*\\S.*", v.cache_behavior_settings.allowed_http_methods))))
      )
    ])
    error_message = "Value must match regex: .*\\S.*"
  }
  validation {
    condition = alltrue([
      for k, v in var.lightsail_distributions : (
        v.cache_behavior_settings == null || (v.cache_behavior_settings.cached_http_methods == null || (can(regex(".*\\S.*", v.cache_behavior_settings.cached_http_methods))))
      )
    ])
    error_message = "Value must match regex: .*\\S.*"
  }
  validation {
    condition = alltrue([
      for k, v in var.lightsail_distributions : (
        v.certificate_name == null || (can(regex("\\w[\\w\\-]*\\w", v.certificate_name)))
      )
    ])
    error_message = "Certificate name must match regex: \\w[\\w\\-]*\\w"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

