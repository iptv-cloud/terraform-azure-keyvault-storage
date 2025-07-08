variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
}

variable "location" {
  description = "Azure region for the Storage Account"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "replication_type" {
  description = "Replication type for the Storage Account (e.g., LRS, RA-GRS)"
  type        = string
}

variable "public_network_access_enabled" {
  description = "Enable public network access for the Storage Account"
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