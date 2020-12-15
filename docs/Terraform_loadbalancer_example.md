## Example: Loadbalancing

### Architecture overview

In this example you will create a loadbalancer with a public IP and a backend resource pool that is connected to a virtual machine scale set that contains two linux servers running nginx

### Example files

All example files can be found here:
- [https://github.com/aberner/iac-azure-terraform-example/tree/main/loadbalancer](https://github.com/aberner/iac-azure-terraform-example/tree/main/loadbalancer)

This folder contains the following files:
- [.../loadbalancer/main.tf](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/loadbalancer/main.tf)
- [.../loadbalancer/terraformstate.tf](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/loadbalancer/terraformstate.tf)
- [.../loadbalancer/output.tf](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/loadbalancer/output.tf)
- [.../loadbalancer/variables.tf](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/loadbalancer/variables.tf)
- [.../loadbalancer/web.conf](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/loadbalancer/web.conf)



### Local configuration file
For this example you should have your own ```terraform.tfvars``` stored in the same folder.
This file contains secrets and must not be under versioncontrol.

```terraform.tfvars``` file should have the following content:

```
# local file, that is'nt under versioncontrol

# choose your own prefix, identifying your resources
app_name="****************"
# generate your own secret and secure password
linux_admin_password="****************"
#sub_id can be found using the following command: az account show
sub_id="****************"
```

### terraform state file settings
The [terraformstate.tf](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/loadbalancer/terraformstate.tf) contains only a template for you to fill out. To find your correct settings please go to the [Azure portal](https://portal.azure.com) and find your terraform state resource.