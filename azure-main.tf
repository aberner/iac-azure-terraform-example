#Configure the state location
terraform {
  backend "azurerm" {
    resource_group_name   = "arb-terraform-state-storage"
    storage_account_name  = "arbtfstorageaccount"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

#Configure the Azure Provider
provider "azurerm" {
  version = ">= 2.33"
  features {}
}

#Create Resource Group
resource "azurerm_resource_group" "azure-rg" {
  name     = "${var.app_name}-${var.app_environment}-rg"
  location = var.rg_location
}

#Create a virtual network
resource "azurerm_virtual_network" "azure-vnet" {
  name                = "${var.app_name}-${var.app_environment}-vnet"
  resource_group_name = azurerm_resource_group.azure-rg.name
  location            = var.rg_location
  address_space       = [var.azure_vnet_cidr]
  tags = {
    environment = var.app_environment,
    responsible = var.department_id
  }
}

#Create a subnet
resource "azurerm_subnet" "azure-subnet" {
  name                 = "${var.app_name}-${var.app_environment}-subnet"
  resource_group_name  = azurerm_resource_group.azure-rg.name
  virtual_network_name = azurerm_virtual_network.azure-vnet.name
  address_prefixes     = [var.azure_subnet_cidr]
}


#Create Security Group to access both Web Server and windows server
resource "azurerm_network_security_group" "azure-nsg" {
  name                = "${var.app_name}-${var.app_environment}-nsg"
  location            = azurerm_resource_group.azure-rg.location
  resource_group_name = azurerm_resource_group.azure-rg.name

  security_rule {
    name                       = "AllowHTTP"
    description                = "Allow HTTP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "Internet"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "AllowSSH"
    description                = "Allow SSH"
    priority                   = 102
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "Internet"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "AllowRDP"
    description                = "Allow RDP"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "Internet"
    destination_address_prefix = "*"
  }
  tags = {
    environment = var.app_environment,
    responsible = var.department_id
  }
}


#Associate the Web NSG with the subnet
resource "azurerm_subnet_network_security_group_association" "azure-nsg-association" {
  subnet_id                 = azurerm_subnet.azure-subnet.id
  network_security_group_id = azurerm_network_security_group.azure-nsg.id
}