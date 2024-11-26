resource "azurerm_subnet" "subnet-1" {
  name                 = "subnet-1"
  resource_group_name  = azurerm_resource_group.gitlab-rg.name
  virtual_network_name = azurerm_virtual_network.gitlab-vnet.name
  address_prefixes     = ["10.1.1.0/24"]
}

