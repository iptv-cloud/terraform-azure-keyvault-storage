variable "keyvault_name" {
  description = "Name of the Azure Key Vault"
  type        = string
}

variable "location" {
  description = "Azure region for the Key Vault"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "soft_delete_retention_days" {
  description = "Soft delete retention period in days"
  type        = number
}

variable "public_network_access_enabled" {
  description = "Enable public network access for the Key Vault"
  type        = bool
}

variable "env" {
  description = "Environment tag (dev, qa, stg, prd)"
  type        = string
  validation {
    condition     = contains(["dev", "qa", "stg", "prd"], var.env)
    error_message = "Environment must be one of: dev, qa, stg, prd"
  }
}