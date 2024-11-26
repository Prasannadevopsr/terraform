resource "azurerm_subnet" "subnet-1" {
  name                 = "subnet-1"
  resource_group_name  = azurerm_resource_group.dev-lic-rg.name
  virtual_network_name = azurerm_virtual_network.dev-lic-vnet1.name
  address_prefixes     = ["10.1.1.0/24"]
}

resource "azurerm_subnet" "subnet-2" {
  name                 = "subnet-2"
  resource_group_name  = azurerm_resource_group.dev-lic-rg.name
  virtual_network_name = azurerm_virtual_network.dev-lic-vnet1.name
  address_prefixes     = ["10.1.2.0/24"]
}

resource "azurerm_subnet" "subnet-3" {
  name                 = "subnet-3"
  resource_group_name  = azurerm_resource_group.dev-lic-rg.name
  virtual_network_name = azurerm_virtual_network.dev-lic-vnet1.name
  address_prefixes     = ["10.1.3.0/24"]
}
