## Example Hub and spoke

This example is build upon Microsoft Azure reference architecture for Hub-spoke.


### Architecture overview

![Hub-spoke archiecture picture](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/docs/hub-spoke.png)

More information: [https://docs.microsoft.com/en-us/azure/architecture/reference-architectures/hybrid-networking/hub-spoke](https://docs.microsoft.com/en-us/azure/architecture/reference-architectures/hybrid-networking/hub-spoke)

### Example files

This example contains the following files:
- [.../hub-spoke/main.tf](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/hub-spoke/main.tf)
- [.../hub-spoke/terraformstate.tf](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/hub-spoke/terraformstate.tf)
- [.../hub-spoke/variables.tf](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/hub-spoke/variables.tf)
- [.../hub-spoke/on-prem.tf](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/hub-spoke/on-prem.tf)
- [.../hub-spoke/hub-vnet.tf](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/hub-spoke/hub-vnet.tf)
- [.../hub-spoke/hub-nva.tf](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/hub-spoke/hub-nva.tf)
- [.../hub-spoke/spoke1.tf](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/hub-spoke/spoke1.tf)
- [.../hub-spoke/spoke2.tf](https://raw.githubusercontent.com/aberner/iac-azure-terraform-example/main/hub-spoke/spoke2.tf)


All example files can be found here:
- [https://github.com/aberner/iac-azure-terraform-example/tree/main/hub-spoke](https://github.com/aberner/iac-azure-terraform-example/tree/main/hub-spoke)


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

