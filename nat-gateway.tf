resource "azurerm_nat_gateway" "ngw" {
  name                    = "ngw-${var.name}-${var.environment}-${azurerm_resource_group.base.location}"
  location                = azurerm_resource_group.base.location
  resource_group_name     = azurerm_resource_group.base.name
  sku_name                = "Standard"
  idle_timeout_in_minutes = 10
  zones                   = ["1"]

  tags = local.tags
}
