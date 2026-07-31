
output "resource_group_name" {
  description = "The name of the resource group containing the example resources."
  value       = module.monitor_private_link_scope.resource_group_name
}

output "private_link_scope_id" {
  description = "The resource ID of the Azure Monitor Private Link Scope."
  value       = module.monitor_private_link_scope.private_link_scope_id
}

output "private_link_scope_name" {
  description = "The name of the Azure Monitor Private Link Scope."
  value       = module.monitor_private_link_scope.private_link_scope_name
}
