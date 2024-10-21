variable "location" {
  type = string
}

variable "environment" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "dns_servers" {
  type = list(string)
}

variable "address_prefixes_1" {
  type = list(string)
}

variable "address_prefixes_2" {
  type = list(string)
}

variable "subscription_id" {
  type = string
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


variable "docker_image" {
  type        = string
  description = "sample docker image"
}

variable "app_service_identity" {
  type = string
}


variable "asp_os_type" {
  description = "The OS type for the App Service Plan."
  type        = string
}

variable "asp_sku_name" {
  description = "The SKU of the App Service Plan."
  type        = string
}
