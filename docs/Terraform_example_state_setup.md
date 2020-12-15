# Terraform state

## Introduction
Terraform must store state about your managed infrastructure and configuration. This state is used by Terraform to map real world resources to your configuration, keep track of metadata, and to improve performance for large infrastructures.

By default the state is stored locally in a file named ```terraform.tfstate```.
We want to store the state in a container in Azure. 

Ref: [https://www.terraform.io/docs/state](https://www.terraform.io/docs/state)


## Adding our state configuration to Terraform
This configuration states that we would like to store our state in Azure

Create a file: ```terraformstate.tf``` using this template

```
#Configure the state location
terraform {
  backend "azurerm" {
    resource_group_name   = "****************"
    storage_account_name  = "****************"
    container_name        = "****************"
    key                   = "terraform.tfstate"
  }
}
```

1. Goto [Azure portal](https://portal.azure.com)
1. Navigate to your Resource group and fill in: ```resource_group_name```
1. Navigate to your Storage account and fill in: ```storage_account_name```
1. Navigate to your Container and fill in: ```container_name```
