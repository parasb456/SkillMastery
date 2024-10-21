resource "azurerm_container_registry" "example" {
  name                = "skillmastery${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.acr_sku
  admin_enabled       = var.admin_enabled
}
