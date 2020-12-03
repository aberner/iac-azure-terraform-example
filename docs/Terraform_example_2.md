## Adding a SQL server resource

- This example dependes on the: [Example - basic network setup](Terraform_example_0.md)

*Note:* This examples requires several properties that needs to be set, see more information in the [Github repo](https://github.com/aberner/iac-azure-terraform-example)

```
#add the following to azure-main.tf

resource "azurerm_sql_server" "azure-sqlserver" {
  name                         = "${var.app_name}-${var.app_environment}-sqlserver"
  resource_group_name          = azurerm_resource_group.azure-rg.name
  location                     = azurerm_resource_group.azure-rg.location
  version                      = "12.0"
  administrator_login          = var.linux_admin_user
  administrator_login_password = var.linux_admin_password

  tags = {
    environment = var.app_environment,
    responsible = var.department_id
  }
}

resource "azurerm_mssql_database" "test" {
  name           = "${var.app_name}-${var.app_environment}-sqldb"
  server_id      = azurerm_sql_server.azure-sqlserver.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = 4
  read_scale     = true
  sku_name       = "BC_Gen5_2"
  zone_redundant = true

  tags = {
    environment = var.app_environment,
    responsible = var.department_id
  }

}
```
