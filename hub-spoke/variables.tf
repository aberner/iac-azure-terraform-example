variable "location" {
  description = "Location of the network"
  default     = "westeurope"
}

variable "rg_location_onprem" {
  description = "location of resource group"
  default = "westeurope"
}

variable "rg_location_cloud" {
  description = "location of resource group in cloud"
  default = "northeurope"
}

variable "username" {
  description = "Username for Virtual Machines"
  type        = string
}

variable "password" {
  description = "Password for Virtual Machines"
  type        = string
}

variable "vmsize" {
  description = "Size of the VMs"
  default     = "Standard_DS1_v2"
}

variable "vpn_key" {
  description = "The shared key used for VPN tunnel"
  type        = string
}

variable "rg_prefix" {
  description = "Prefix used for resource groups"
  type        = string
}

variable "sub_id" {
  description = "Enter the subscription ID of your Azure subscription"
  type        = string
}