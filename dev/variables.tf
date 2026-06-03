variable "azurerm_resource_group" {
  type    = string
  default = "rg-aks-dev-sdp"
}

variable "azurerm_location" {
  type    = string
  default = "Central India"
}

variable "azurerm_virtual_network" {
  type = string
}