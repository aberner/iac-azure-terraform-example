#Configure the Azure Provider
provider "azurerm" {
  subscription_id = var.sub_id
  version         = ">= 2.33"
  features {}
}
