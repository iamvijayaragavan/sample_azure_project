variable "name" {
  description = "The name of the node pool."
  type        = string
}

variable "kubernetes_cluster_id" {
  description = "The ID of the Kubernetes cluster."
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machines in the node pool."
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the node pool."
  type        = number
}

variable "os_disk_size_gb" {
  description = "The OS disk size (in GB) for the virtual machines."
  type        = number
}

variable "mode" {
  description = "The mode of the node pool."
  type        = string
}

resource "azurerm_kubernetes_cluster_node_pool" "this" {
  name                = var.name
  kubernetes_cluster_id = var.kubernetes_cluster_id
  vm_size             = var.vm_size
  node_count          = var.node_count
  os_disk_size_gb     = var.os_disk_size_gb
  mode                = var.mode
}

output "node_pool_id" {
  value = azurerm_kubernetes_cluster_node_pool.this.id
}

