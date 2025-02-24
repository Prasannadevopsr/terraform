terraform {
  backend "azurerm" {
    resource_group_name  = "HUB-RG"
    storage_account_name = "storageaccount34568"
    container_name       = "prod-tfstate"
    key                  = "prod.terraform.tfstate"
  }
}