resource "azurerm_kubernetes_cluster" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version
  enable_rbac         = true

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
    os_disk_size_gb = var.os_disk_size_gb
    vnet_subnet_id = var.subnet_id
  }

  service_principal {
    client_id     = var.service_principal_client_id
    client_secret = var.service_principal_client_secret
  }

  role_based_access_control {
    enabled = true
  }

  network_profile {
    network_plugin = "azure"
    network_policy = "calico"
  }

  tags = var.tags

  addon_profile {
    kube_dashboard {
      enabled = false
    }
  }

  identity {
    type = "SystemAssigned"
  }
}

