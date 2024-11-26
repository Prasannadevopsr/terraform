resource "azurerm_virtual_network" "gitlab-vnet" {
  name                = "gitlab-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.gitlab-rg.location
  resource_group_name = azurerm_resource_group.gitlab-rg.name
}

resource "azurerm_subnet" "gitlab-subnet" {
  name                 = "gitlab-subnet"
  resource_group_name  = azurerm_resource_group.gitlab-rg.name
  virtual_network_name = azurerm_virtual_network.gitlab-vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_public_ip" "example" {
  name                     = "example_pip"
  resource_group_name      = azurerm_resource_group.gitlab-rg.name
  location                 = azurerm_resource_group.gitlab-rg.location
  allocation_method        = "Dynamic"
}

