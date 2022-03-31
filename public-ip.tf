resource "azurerm_public_ip" "pip" {
  name                = "pip-ngw-${var.name}-${var.environment}"
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name
  allocation_method   = "Static"
  sku                 = var.ngw_pip_sku

  tags = local.tags
}

resource "azurerm_nat_gateway_public_ip_association" "ngw_pip_association" {
  nat_gateway_id       = azurerm_nat_gateway.ngw.id
  public_ip_address_id = azurerm_public_ip.pip.id
}
