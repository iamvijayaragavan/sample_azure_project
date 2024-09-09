output "resource_group_id" {
  description = "The ID of the Azure Resource Group."
  value       = module.resource_group.resource_group_id
}

output "resource_group_name" {
  description = "The name of the Azure Resource Group."
  value       = module.resource_group.resource_group_name
}

output "vnet_id" {
  description = "The ID of the Azure Virtual Network."
  value       = module.vnet.vnet_id
}

output "subnet_id" {
  description = "The ID of the Azure Subnet."
  value       = module.vnet.subnet_id
}

output "acr_id" {
  description = "The ID of the Azure Container Registry."
  value       = module.acr.acr_id
}

output "acr_login_server" {
  description = "The login server URL of the Azure Container Registry."
  value       = module.acr.acr_login_server
}

output "aks_cluster_id" {
  description = "The ID of the Azure Kubernetes Service cluster."
  value       = module.aks.kube_config.kube_config_id
}

output "aks_kube_config" {
  description = "The raw Kubernetes configuration file for the AKS cluster."
  value       = module.aks.kube_config
}

output "aks_node_pool_id" {
  description = "The ID of the AKS Node Pool."
  value       = module.aks_node_pool.node_pool_id
}

