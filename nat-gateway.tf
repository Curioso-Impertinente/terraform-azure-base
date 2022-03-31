resource "azurerm_nat_gateway" "ngw" {
  name                    = "ngw-${var.name}-${var.environment}"
  location                = var.resource_group.location
  resource_group_name     = var.resource_group.name
  sku_name                = "Standard"
  idle_timeout_in_minutes = 10
  zones                   = ["1"]

  tags = local.tags
}
