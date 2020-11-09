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
* A source-code editor (IDE)
  * https://code.visualstudio.com/


# USAGE

1. Fork and download
1. Create the file terraform.tfvars
    * set the variable app_name
    * `app_name = "<INSERT_HERE>"`
1. Initialize Terraform
    * `terrafrom init`
1. Terraform plan
    * `terrafrom plan`
    * you will need to authenticated towards azure if this is'nt allready done.

If everything now works, it's time to try to create your environment:

* `terrafrom apply`



## Variables
For simple and automated integration towards Azure, for instance with the use of [Terraform Cloud](https://www.terraform.io/), you can set the following variables:

```
$Env:ARM_TENANT_ID="<INSERT_HERE>"
$Env:ARM_SUBSCRIPTION_ID="<INSERT_HERE>"
$Env:ARM_CLIENT_ID="<INSERT_HERE>"
$Env:ARM_CLIENT_SECRET="<INSERT_HERE>"
```
