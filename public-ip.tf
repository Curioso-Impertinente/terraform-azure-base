resource "azurerm_public_ip" "pip" {
  name                = "pip-ngw-${var.name}-${var.environment}-${azurerm_resource_group.base.location}"
  location            = azurerm_resource_group.base.location
  resource_group_name = azurerm_resource_group.base.name
  allocation_method   = "Static"
  sku                 = var.ngw_pip_sku

  tags = local.tags
}

resource "azurerm_nat_gateway_public_ip_association" "ngw_pip_association" {
  nat_gateway_id       = azurerm_nat_gateway.ngw.id
  public_ip_address_id = azurerm_public_ip.pip.id
}
