# default provider
provider "azurerm" {
  subscription_id = "5e47e5a1-7dc4-4abb-87a2-f371200842ea"
  features {}
}
 
provider "azurerm" {
  subscription_id = "24cd10ff-1e55-4c93-ac46-5bcce31cd7a4"
  features {}
  alias = "production"
}