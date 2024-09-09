provider "azurerm" {
  features {}
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group."
  type        = string
}

variable "resource_group_location" {
  description = "The Azure region where the resource group should be created."
  type        = string
}

variable "vnet_name" {
  description = "The name of the Azure Virtual Network."
  type        = string
}

variable "vnet_location" {
  description = "The Azure region where the virtual network should be created."
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
}

variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
}

variable "acr_sku" {
  description = "The SKU of the Azure Container Registry."
  type        = string
}

variable "aks_name" {
  description = "The name of the Azure Kubernetes Service cluster."
  type        = string
}

variable "aks_location" {
  description = "The Azure region where the AKS cluster should be created."
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the Kubernetes cluster."
  type        = string
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use."
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the default node pool."
  type        = number
}

variable "vm_size" {
  description = "The size of the virtual machines in the node pool."
  type        = string
}

variable "os_disk_size_gb" {
  description = "The OS disk size (in GB) for the virtual machines."
  type        = number
}

variable "service_principal_client_id" {
  description = "The client ID of the service principal."
  type        = string
}

variable "service_principal_client_secret" {
  description = "The client secret of the service principal."
  type        = string
}

variable "tags" {
  description = "Tags to apply to the resources."
  type        = map(string)
  default     = {}
}

