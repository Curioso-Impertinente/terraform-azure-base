resource "azurerm_resource_group" "base" {
  name     = "rg-base-${var.environment}-${var.location}"
  location = var.location

  tags = local.tags
}
