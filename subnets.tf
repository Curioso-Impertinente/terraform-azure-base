resource "azurerm_subnet" "snet" {
  for_each = toset(var.subnets)

  name                 = "snet-${each.value}"
  resource_group_name  = azurerm_resource_group.base.name
  virtual_network_name = azurerm_virtual_network.base.name
  address_prefixes     = [cidrsubnet(var.address_space[0], 8, (index(var.subnets, each.value) + 1))]
}

resource "azurerm_subnet_nat_gateway_association" "subnet_ngw" {
  for_each = toset(var.subnets)

  subnet_id = azurerm_subnet.snet[each.key].id
  nat_gateway_id = azurerm_nat_gateway.ngw.id
}
