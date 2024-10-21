variable "environment" {
  description = "The name of the Azure Container Registry."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where the ACR will be created."
  type        = string
}

variable "acr_sku" {
  description = "The SKU of the Azure Container Registry."
  type        = string
}

variable "admin_enabled" {
  description = "Enable admin access to the ACR."
  type        = bool
  default     = true
}
