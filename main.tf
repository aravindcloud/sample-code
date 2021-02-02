provider "azurerm" {
  version = "=1.44.0"
}
resource "azurerm_resource_group" "tf_azure_guide" {
  name     = var.resource_group
  location = var.location
}
resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  location            = azurerm_resource_group.tf_azure_guide.location
  address_space       = [var.address_space]
  resource_group_name = azurerm_resource_group.tf_azure_guide.name
}
resource "azurerm_subnet" "subnet" {
  name                 = "${var.prefix}subnet"
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = azurerm_resource_group.tf_azure_guide.name
  address_prefixes     = var.subnet_prefix
}

