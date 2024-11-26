resource "azurerm_resource_group" "gitlab-rg" {
  name     = "gitlab-rg"
  location = "East US"
  provider = azurerm.producation
   
  }