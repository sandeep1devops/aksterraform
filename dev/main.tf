resource "azurerm_resource_group" "rgt" {
  name     = var.azurerm_resource_group
  location = var.azurerm_location
}

module "network" {
  source = "../modules/network"

  azurerm_virtual_network = var.azurerm_virtual_network
  address_space           = ["192.168.0.0/16"]
  azurerm_location        = var.azurerm_location
  azurerm_resource_group  = azurerm_resource_group.rgt.name
}