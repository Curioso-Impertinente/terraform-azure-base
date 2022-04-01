locals {
  tags = merge(
    var.tags,
    {
      env = var.environment
    }
  )
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.name}-${var.environment}-${azurerm_resource_group.base.location}"
  location            = azurerm_resource_group.base.location
  resource_group_name = azurerm_resource_group.base.name
  address_space       = var.address_space
  dns_servers         = var.dns_servers

  tags = local.tags
}
