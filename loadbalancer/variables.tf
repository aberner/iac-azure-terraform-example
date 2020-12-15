#Define application name
variable "app_name" {
  type = string
  description = "Your unique application name, used as a prefix for all resources"

}
#Define application environment
variable "app_environment" {
  type = string
  description = "Application environment"
  default = "test"
}

#Define the internal department responsible for the application
variable "department_id" {
  type = string
  description = "Application environment"
  default = "562301"
}

# Location Resource Group
variable "rg_location" {
  type        = string
  description = "Location of Resource Group"
  default     = "West Europe"
}

# Vnet CIDR
variable "azure_vnet_cidr" {
  type        = string
  description = "Vnet CIDR"
  default     = "10.2.0.0/16"
}

# Subnet CIDR
variable "azure_subnet_cidr" {
  type        = string
  description = "Subnet CIDR"
  default     = "10.2.1.0/24"
}

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

variable "tags" {
    description = "a map of tags used to simplify tagging of resources"
    type        = map(string)

    default     = {
        environment = "test"
        department_id = "562301"
    }
}

variable "application_port" {
  description   = "the port that you want to expose to the external loadbalancer"
  default       = 80
}