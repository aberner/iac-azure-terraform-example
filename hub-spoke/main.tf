#Configure the state location
terraform {
  backend "azurerm" {
    resource_group_name   = "philip-tfstate"
    storage_account_name  = "philstfstate"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

#Configure the Azure Provider
provider "azurerm" {
  version = ">= 2.33"
  features {}
}
