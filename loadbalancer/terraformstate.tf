#Configure the backend
terraform {
  backend "azurerm" {
    resource_group_name  = ""
    storage_account_name = ""
    container_name       = ""
    key                  = "lb.terraform.tfstate"
  }
}