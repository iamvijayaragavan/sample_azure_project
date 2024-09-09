terraform {
  backend "azurerm" {
    resource_group_name  = "pocterraform"
    storage_account_name = "testpocsa"
    container_name       = "terraformstatefile"
    key                  = "terraform.tfstate"
  }
}

