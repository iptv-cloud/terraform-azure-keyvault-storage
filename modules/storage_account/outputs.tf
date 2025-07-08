output "storage_account_id" {
  description = "ID of the Storage Account"
  value       = azurerm_storage_account.storage.id
}

output "storage_account_primary_endpoint" {
  description = "Primary endpoint of the Storage Account"
  value       = azurerm_storage_account.storage.primary_blob_endpoint
}