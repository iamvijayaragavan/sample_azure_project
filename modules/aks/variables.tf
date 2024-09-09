variable "name" {
  description = "The name of the Azure Kubernetes Service cluster."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources should be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
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

variable "subnet_id" {
  description = "The ID of the subnet to associate with the AKS cluster."
  type        = string
}

variable "tags" {
  description = "Tags to apply to the Kubernetes cluster."
  type        = map(string)
  default     = {}
}

