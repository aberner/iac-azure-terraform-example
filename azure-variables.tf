# azure-variables.tf | Variables for the Azure module

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

