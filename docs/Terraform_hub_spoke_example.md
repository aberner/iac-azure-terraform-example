## Example Hub and spoke

This example is build upon Microsoft Azure reference architecture for Hub-spoke.


### Architecture overview

![Hub-spoke archiecture picture]https://github.com/aberner/iac-azure-terraform-example/blob/main/docs/hub-spoke.png)

More information: https://docs.microsoft.com/en-us/azure/architecture/reference-architectures/hybrid-networking/hub-spoke

### Example files

This example contains the following files:
- https://github.com/aberner/iac-azure-terraform-example/blob/main/hub-spoke/main.tf
- https://github.com/aberner/iac-azure-terraform-example/blob/main/hub-spoke/variables.tf
- https://github.com/aberner/iac-azure-terraform-example/blob/main/hub-spoke/on-prem.tf
- https://github.com/aberner/iac-azure-terraform-example/blob/main/hub-spoke/hub-vnet.tf
- https://github.com/aberner/iac-azure-terraform-example/blob/main/hub-spoke/hub-nva.tf
- https://github.com/aberner/iac-azure-terraform-example/blob/main/hub-spoke/spoke1.tf
- https://github.com/aberner/iac-azure-terraform-example/blob/main/hub-spoke/spoke2.tf


All example files can be found here:
- https://github.com/aberner/iac-azure-terraform-example/tree/main/hub-spoke


### Local configuration file
For this example you should have your own ```terraform.tfvars``` stored in the same folder.
This file contains secrets and must not be under versioncontrol.

```terraform.tfvars``` file should have the following content:

```
# local file, that is'nt under versioncontrol

# generate your own secret and secure password as vpn_key
vpn_key="****************"
# choose your own prefix, identifying your resources
rg_prefix="****************"
# choose your own admin username 
username="arbadmin"
# generate your own secret and secure password
password="****************"
#sub_id can be found using the following command: az account show
sub_id="****************"
```

