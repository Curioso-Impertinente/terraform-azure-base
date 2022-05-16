resource "azurerm_resource_group" "base" {
  name     = "rg-${local.name}-${var.environment}-${var.location}"
  location = var.location

  tags = local.tags
}
