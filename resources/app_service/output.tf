output "default_hostname" {
  value = azurerm_app_service.example.default_site_hostname
}

output "principal_id" {
  value = azurerm_app_service.example.identity[0].principal_id
}
