variable "environment" {
  description = "The name of the Web App."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where the Web App will be created."
  type        = string
}

variable "service_plan_id" {
  description = "The ID of the App Service Plan to associate with the Web App."
  type        = string
}

variable "acr_id" {
  description = "The ID of the Azure Container Registry"
  type        = string
}

variable "docker_image" {
  type        = string
  description = "sample docker image"
}

variable "app_service_identity" {
  type = string
} 

variable "DOCKER_REGISTRY_SERVER_URL" {
  type = string
}

variable "DOCKER_REGISTRY_SERVER_USERNAME" {
  type = string
}

variable "DOCKER_REGISTRY_SERVER_PASSWORD" {
  type = string
}
