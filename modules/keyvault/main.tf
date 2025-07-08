resource "azurerm_key_vault" "keyvault" {
  name                        = var.keyvault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"
  enabled_for_disk_encryption = true
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = false
  public_network_access_enabled = var.public_network_access_enabled

  tags = {
    env = var.env
  }
}

data "azurerm_client_config" "current" {}