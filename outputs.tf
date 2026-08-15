output "lightsail_distributions_id" {
  description = "Map of id values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lightsail_distributions_alternative_domain_names" {
  description = "Map of alternative_domain_names values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.alternative_domain_names if v.alternative_domain_names != null && length(v.alternative_domain_names) > 0 }
}
output "lightsail_distributions_arn" {
  description = "Map of arn values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "lightsail_distributions_bundle_id" {
  description = "Map of bundle_id values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.bundle_id if v.bundle_id != null && length(v.bundle_id) > 0 }
}
output "lightsail_distributions_cache_behavior" {
  description = "Map of cache_behavior values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.cache_behavior if v.cache_behavior != null && length(v.cache_behavior) > 0 }
}
output "lightsail_distributions_cache_behavior_settings" {
  description = "Map of cache_behavior_settings values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => one(v.cache_behavior_settings) if v.cache_behavior_settings != null && length(v.cache_behavior_settings) > 0 }
}
output "lightsail_distributions_certificate_name" {
  description = "Map of certificate_name values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.certificate_name if v.certificate_name != null && length(v.certificate_name) > 0 }
}
output "lightsail_distributions_created_at" {
  description = "Map of created_at values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "lightsail_distributions_default_cache_behavior" {
  description = "Map of default_cache_behavior values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => one(v.default_cache_behavior) if v.default_cache_behavior != null && length(v.default_cache_behavior) > 0 }
}
output "lightsail_distributions_domain_name" {
  description = "Map of domain_name values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "lightsail_distributions_ip_address_type" {
  description = "Map of ip_address_type values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.ip_address_type if v.ip_address_type != null && length(v.ip_address_type) > 0 }
}
output "lightsail_distributions_is_enabled" {
  description = "Map of is_enabled values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.is_enabled if v.is_enabled != null }
}
output "lightsail_distributions_location" {
  description = "Map of location values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.location if v.location != null && length(v.location) > 0 }
}
output "lightsail_distributions_name" {
  description = "Map of name values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "lightsail_distributions_origin" {
  description = "Map of origin values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => one(v.origin) if v.origin != null && length(v.origin) > 0 }
}
output "lightsail_distributions_origin_public_dns" {
  description = "Map of origin_public_dns values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.origin_public_dns if v.origin_public_dns != null && length(v.origin_public_dns) > 0 }
}
output "lightsail_distributions_region" {
  description = "Map of region values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lightsail_distributions_resource_type" {
  description = "Map of resource_type values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.resource_type if v.resource_type != null && length(v.resource_type) > 0 }
}
output "lightsail_distributions_status" {
  description = "Map of status values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.status if v.status != null && length(v.status) > 0 }
}
output "lightsail_distributions_support_code" {
  description = "Map of support_code values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.support_code if v.support_code != null && length(v.support_code) > 0 }
}
output "lightsail_distributions_tags" {
  description = "Map of tags values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "lightsail_distributions_tags_all" {
  description = "Map of tags_all values across all lightsail_distributions, keyed the same as var.lightsail_distributions"
  value       = { for k, v in aws_lightsail_distribution.lightsail_distributions : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

