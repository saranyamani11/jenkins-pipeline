# main.tf
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "my-resource-group"
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = "my-virtual-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  name                 = "my-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]
}
