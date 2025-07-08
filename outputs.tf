output "keyvault_id" {
  description = "ID of the Key Vault"
  value       = module.keyvault.keyvault_id
}

output "keyvault_uri" {
  description = "URI of the Key Vault"
  value       = module.keyvault.keyvault_uri
}

output "storage_account_lrs_id" {
  description = "ID of the LRS Storage Account"
  value       = module.storage_account_lrs.storage_account_id
}

output "storage_account_ragrs_id" {
  description = "ID of the RA-GRS Storage Account"
  value       = module.storage_account_ragrs.storage_account_id
}