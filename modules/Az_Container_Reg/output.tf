output "login_server" {
  value = azurerm_container_registry.techchak.login_server
}

output "resource_group" {
  value = azurerm_resource_group.techchak.name
}