# Github - Part two - collaborate using github!

In this lesson we will start to use branches, merge and send pull requests.
This is needed to collaborate with others on Github.

---

### Github branch: The basics
   - Branching is the way to work on different versions of a repository at one time. By default your repository has one branch named ```main```
   - ```main``` should always represent the state in production, ergo all changes should be made on separte feature branches
   - 2 min introduction to branches: [GitHub & Git Foundations: Branch (youtube)](https://www.youtube.com/watch?v=H5GJfcp3p4Q&list=PL0lo9MOBetEHhfG9vJzVCTiDYcbhAiEqL&index=2)

**Exercise:**
   1. Choose: "New Branch" in Github Desktop, name: ```adding-sqlserver```
   1. You now get the choice between: ```Leave my changes on main``` or ```Bring my changes to adding-sqlserver```, choose ```Leave my changes on main```
   1. Now Publish your new branch to GitHub
   1. Do a code change, see example below
   1. Commit and push your changes to Github

**Result:**
```
    This will create a new branch in your repository with your changes.
    The Main-branch will still
```

#### Example code change
   - Here is an example change that you can do on your new feature branch

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


### Github Pull requests. The basics
   - Pull Requests are the heart of collaboration on GitHub. 
   - When you open a pull request, you’re proposing your changes and requesting that your change will be reviewed and merged into the target branch

**Exercise:**
   1. 

**Result:**
```
    This will create a new Pull request and show if the pull request can be automatically merged or not.
```

# More information

- https://www.youtube.com/githubguides
- https://guides.github.com/
