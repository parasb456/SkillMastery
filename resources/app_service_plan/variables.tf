variable "environment" {
  description = "The name of the App Service Plan."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where the App Service Plan will be created."
  type        = string
}

variable "asp_os_type" {
  description = "The OS type for the App Service Plan."
  type        = string
}

variable "asp_sku_name" {
  description = "The SKU of the App Service Plan."
  type        = string
}
