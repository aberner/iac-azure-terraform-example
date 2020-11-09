# Infrastructure as Code example with Terraform setting up Azure resources
 Simple azure terraform example

## prerequisite
* Terraform:
  * https://www.terraform.io/downloads.html
* Azure CLI:
  * https://docs.microsoft.com/cli/azure

## Nice to have
* Github client:
  * https://desktop.github.com


# USAGE

1. Fork and download
1. Edit common-variables.tf
    * set variables that fits your environment
1. Initialize Terraform
1. Terraform plan
....


## Variables
For simple and automated integration towards Azure, for instance with the use of [Terraform Cloud](https://www.terraform.io/), you can set the following variables:

```
$Env:ARM_TENANT_ID="<INSERT_HERE>"
$Env:ARM_SUBSCRIPTION_ID="<INSERT_HERE>"
$Env:ARM_CLIENT_ID="<INSERT_HERE>"
$Env:ARM_CLIENT_SECRET="<INSERT_HERE>"
```
