variable "name" {
  description = "The name of the Azure Container Registry."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources should be created."
  type        = string
}

variable "sku" {
  description = "The SKU of the container registry."
  type        = string
  default     = "Basic"
}

variable "admin_enabled" {
  description = "Enable or disable admin user."
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to the container registry."
  type        = map(string)
  default     = {}
}

resource "azurerm_container_registry" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku

  admin_enabled = var.admin_enabled

  tags = var.tags
}

output "acr_id" {
  value = azurerm_container_registry.this.id
}

output "acr_login_server" {
  value = azurerm_container_registry.this.login_server
}

