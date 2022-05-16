resource "azurerm_nat_gateway" "ngw" {
  name                    = "ngw-${local.name}-${var.environment}-${azurerm_resource_group.base.location}-001"
  location                = azurerm_resource_group.base.location
  resource_group_name     = azurerm_resource_group.base.name
  sku_name                = "Standard"
  idle_timeout_in_minutes = 10
  zones                   = var.natgw_availability_zones

  tags = local.tags
}
