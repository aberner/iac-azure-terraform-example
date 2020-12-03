## Set up a Azure app service containing the OWASP Juice Shop

- This example dependes on the: [Example - basic network setup](Terraform_example_0.md)

*Note:* This examples requires several properties that needs to be set, see more information in the [Github repo](https://github.com/aberner/iac-azure-terraform-example)

```
# first step: create a app-service-plan for Linux, setting the size
resource "azurerm_app_service_plan" "app-service-plan" {
  name                = "${var.app_name}-${var.app_environment}-app-service-plan"
  location = azurerm_resource_group.azure-rg.location
  resource_group_name = azurerm_resource_group.azure-rg.name
  kind = "Linux"
  reserved = true

  sku {
    tier = "Standard"
    size = "S1"
  }

  tags = {
    environment = var.app_environment,
    responsible = var.department_id
  }
}

# second step: create the app-service with reference to the juice-shop docker image
resource "azurerm_app_service" "app-service" {
  name = "${var.app_name}-${var.app_environment}-app-service"
  location = azurerm_resource_group.azure-rg.location
  resource_group_name = azurerm_resource_group.azure-rg.name
  app_service_plan_id = azurerm_app_service_plan.app-service-plan.id
  site_config {
    linux_fx_version = "DOCKER|bkimminich/juice-shop:latest"
  }

  tags = {
    environment = var.app_environment,
    responsible = var.department_id
  }
}

# third step: print out the DNS name created
output "app_service_url" {
  value = azurerm_app_service.app-service.default_site_hostname
}
```