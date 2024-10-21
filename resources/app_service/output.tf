output "default_hostname" {
  value = azurerm_linux_web_app.example.default_hostname
}

output "principal_id" {
  value = azurerm_linux_web_app.example.identity.0.principal_id
}
