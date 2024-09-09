variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to the virtual network."
  type        = map(string)
  default     = {}
}

resource "azurerm_subnet" "this" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = var.address_prefixes
}

output {
  value = azurerm_subnet.this.id
}

