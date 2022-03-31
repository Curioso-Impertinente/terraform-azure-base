locals {
  short_location = lower(replace(var.resource_group.location, " ", ""))
  tags = merge(
    var.tags,
    {
      env = var.environment
    }
  )
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.name}-${var.environment}-${local.short_location}"
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name
  address_space       = var.address_space
  dns_servers         = var.dns_servers

  tags = local.tags
}
