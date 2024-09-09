variable "name" {
  description = "The name of the Azure Virtual Network."
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

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to the virtual network."
  type        = map(string)
  default     = {}
}

resource "azurerm_virtual_network" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space

  tags = var.tags
}
