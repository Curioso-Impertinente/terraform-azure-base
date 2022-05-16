resource "azurerm_virtual_network" "base" {
  name                = "vnet-base-${var.environment}-${azurerm_resource_group.base.location}-001"
  location            = azurerm_resource_group.base.location
  resource_group_name = azurerm_resource_group.base.name
  address_space       = var.address_space
  dns_servers         = var.dns_servers

  tags = local.tags
}
