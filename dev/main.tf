module "resource_group" {
  source  = "./modules/resource_group"
  name    = var.resource_group_name
  location = var.resource_group_location
  tags    = var.tags
}

module "vnet" {
  source              = "./modules/vnet"
  name                = var.vnet_name
  location            = var.vnet_location
  resource_group_name = module.resource_group.resource_group_name
  address_space       = var.address_space
  subnet_name         = var.subnet_name
  address_prefixes    = var.subnet_address_prefixes
  tags                = var.tags
}

module "acr" {
  source              = "./modules/acr"
  name                = var.acr_name
  resource_group_name = module.resource_group.resource_group_name
  location            = var.vnet_location
  sku                 = var.acr_sku
  tags                = var.tags
}

module "aks" {
  source                          = "./modules/aks"
  name                            = var.aks_name
  location                        = var.aks_location
  resource_group_name             = modu
}
