## Setup for a simple windows server


```
#Get a Static Public IP for a windows ip
resource "azurerm_public_ip" "azure-windows-ip" {
  name                = "${var.app_name}-${var.app_environment}-windows-ip"
  location            = azurerm_resource_group.azure-rg.location
  resource_group_name = azurerm_resource_group.azure-rg.name
  allocation_method   = "Static"

  tags = {
    environment = var.app_environment,
    responsible = var.department_id
  }
}

#Create Network Card for Windows Server VM
resource "azurerm_network_interface" "azure-windows-nic" {
  name                = "${var.app_name}-${var.app_environment}-windows-nic"
  location            = azurerm_resource_group.azure-rg.location
  resource_group_name = azurerm_resource_group.azure-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.azure-subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.azure-windows-ip.id
  }

  tags = {
    environment = var.app_environment,
    responsible = var.department_id
  }
}

# Create windows server vm
resource "azurerm_windows_virtual_machine" "azure-windows-vm" {
  name                             = "${var.app_name}-${var.app_environment}-windows-vm"
  location                         = azurerm_resource_group.azure-rg.location
  resource_group_name              = azurerm_resource_group.azure-rg.name
  network_interface_ids            = [azurerm_network_interface.azure-windows-nic.id]
  size                             = var.windows_vm_size

  computer_name  = var.windows_vm_hostname
  admin_username = var.windows_admin_user
  admin_password = var.windows_admin_password
  enable_automatic_updates = true

  source_image_reference {
    publisher = var.windows_server_publisher
    offer     = var.windows_server_offer
    sku       = var.windows_server_sku
    version   = "latest"
  }

  os_disk {
    name              = "${var.app_name}-${var.app_environment}-windows-vm-os-disk"
    caching           = var.windows_server_os_disk_caching
    storage_account_type = var.windows_server_os_disk_storage_type
  }
  

  tags = {
    environment = var.app_environment,
    responsible = var.department_id
  }
}

#Output
output "external-ip-azure-windows-server" {
  value = azurerm_public_ip.azure-windows-ip.ip_address
}
```