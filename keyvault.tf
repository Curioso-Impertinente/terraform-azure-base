resource "azurerm_key_vault" "base" {
  name                        = "kv-curimp-${local.name}-${var.environment}"
  location                    = azurerm_resource_group.base.location
  resource_group_name         = azurerm_resource_group.base.name
  enabled_for_disk_encryption = true
  tenant_id                   = var.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = true

  sku_name = "standard"

  network_acls {
    bypass         = "AzureServices"
    default_action = "Deny"
  }

  tags = local.tags
}
