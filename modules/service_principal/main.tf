resource "azuread_application" "example" {
  display_name = "example"
}

resource "azuread_service_principal" "example" {
  application_id               = azuread_application.example.application_id
  app_role_assignment_required = false
}

resource "azurerm_role_assignment" "test" {
  scope                = "e4f8a1c0-3c31-44d5-8306-01bfd1c41e9e"   # the resource id
  role_definition_name = "owner" # such as "Contributor"
  principal_id         = azuread_service_principal.example.application_id
}
