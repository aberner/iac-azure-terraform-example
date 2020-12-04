variable "location" {
  description = "Location of the network"
  default     = "norwayeast"
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
