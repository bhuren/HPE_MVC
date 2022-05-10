resource "azurerm_resource_group" "rg1" {
  name      = var.resource_group_name
  location  = var.resource_group_location
}

resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}

resource "azurerm_subnet" "subnets_vnet1" {
  count                = length(var.subnet_details)
  name                 = lookup(element(var.subnet_details, count.index), "name")
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [lookup(element(var.subnet_details, count.index), "ip")]
}