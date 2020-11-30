
# Linux VM Admin User
variable "linux_admin_user" {
  type        = string
  description = "Linux VM Admin User"
  default     = "tfadmin"
}

# Linux VM Admin Password
variable "linux_admin_password" {
  type        = string
  description = "Linux VM Admin Password"
}

# Linux VM Hostname
variable "linux_vm_hostname" {
  type        = string
  description = "Linux VM Hostname"
  default     = "azwebserver1"
}

# Ubuntu Linux Publisher used to build VMs
variable "ubuntu-linux-publisher" {
  type        = string
  description = "Ubuntu Linux Publisher used to build VMs"
  default     = "Canonical"
}

# Linx VM Size
variable "linux_vm_size" {
  type        = string
  description = "VM Size for  the Linux server"
  default     = "Standard_B1s"
}

# Ubuntu Linux Offer used to build VMs
variable "ubuntu-linux-offer" {
  type        = string
  description = "Ubuntu Linux Offer used to build VMs"
  default     = "UbuntuServer"
}

# Ubuntu Linux 18.x SKU used to build VMs
variable "ubuntu-linux-18-sku" {
  type        = string
  description = "Ubuntu Linux Server SKU used to build VMs"
  default     = "18.04-LTS"
}
