
# Windows VM Admin User
variable "windows_admin_user" {
  type        = string
  description = "Windows VM Admin User"
  default     = "tfadmin"
}

# Windows VM Admin Password
variable "windows_admin_password" {
  type        = string
  description = "Windows VM Admin Password"
}

# Windows VM Hostname
variable "windows_vm_hostname" {
  type        = string
  description = "Windows VM Hostname"
  default     = "azwinserver1"
}

# Windows VM Size
variable "windows_vm_size" {
  type        = string
  description = "VM Size for  the windows server"
  default     =  "Standard_DS1_v2"
}

# Windows Publisher used to build VMs
variable "windows_server_publisher" {
  type        = string
  description = "Windows Publisher used to build VMs"
  default     = "MicrosoftWindowsServer"
}

# Windows Offer used to build VMs
variable "windows_server_offer" {
  type        = string
  description = "Windows Server Offer used to build VMs"
  default     = "WindowsServer"
}

# Windows SKU used to build VMs
variable "windows_server_sku" {
  type        = string
  description = "Windows Server SKU used to build VMs"
  default     = "2019-Datacenter"
}

# Windows SKU used to build VMs
variable "windows_server_os_disk_caching" {
  type        = string
  description = "Windows Server os disk caching"
  default     = "ReadWrite"
}

# Windows SKU used to build VMs
variable "windows_server_os_disk_storage_type" {
  type        = string
  description = "Windows Server os disk storage type"
  default     = "Premium_LRS"
}
