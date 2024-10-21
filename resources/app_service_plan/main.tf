resource "azurerm_service_plan" "example" {
  name                = "skillmastery-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = var.asp_os_type
  sku_name            = var.asp_sku_name
}
