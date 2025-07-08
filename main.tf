provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-gcp-devops-architect"
  location = "canadaeast"
}

module "keyvault" {
  source                      = "./modules/keyvault"
  keyvault_name               = "kv-gcpdevops-${var.env}"
  location                    = "canadaeast"
  resource_group_name         = azurerm_resource_group.rg.name
  soft_delete_retention_days  = 7
  public_network_access_enabled = false
  env                         = var.env
}

module "storage_account_lrs" {
  source                      = "./modules/storage_account"
  storage_account_name        = "stgcanadacentrallrs${var.env}"
  location                    = "canadacentral"
  resource_group_name         = azurerm_resource_group.rg.name
  replication_type            = "LRS"
  public_network_access_enabled = false
  env                         = var.env
}

module "storage_account_ragrs" {
  source                      = "./modules/storage_account"
  storage_account_name        = "stgcanadaeastragrs${var.env}"
  location                    = "canadaeast"
  resource_group_name         = azurerm_resource_group.rg.name
  replication_type            = "RAGRS"
  public_network_access_enabled = true
  env                         = var.env
}