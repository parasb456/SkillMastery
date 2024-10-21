output "login_server" {
  value = azurerm_container_registry.example.login_server
}

output "acr_name" {
  value = azurerm_container_registry.example.name  # Adjust if the name is derived differently
}

output "id" {
  value = azurerm_container_registry.example.id
}
