variable "env" {
  description = "Environment tag (dev, qa, stg, prd)"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "qa", "stg", "prd"], var.env)
    error_message = "Environment must be one of: dev, qa, stg, prd"
  }
}