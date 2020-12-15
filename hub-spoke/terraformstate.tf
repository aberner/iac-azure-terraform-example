#Configure the state location
terraform {
  backend "azurerm" {
    resource_group_name   = ""
    storage_account_name  = ""
    container_name        = ""
    key                   = "hubspoke.terraform.tfstate"
  }
}