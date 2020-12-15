#Configure the backend
terraform {
  backend "azurerm" {
    resource_group_name  = "philip-tfstate"
    storage_account_name = "philstfstate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}