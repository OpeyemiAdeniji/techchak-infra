resource "azurerm_resource_group" "techchak" {
  name     = "${var.resource_group_name}-${var.prefix}"
  location = var.location
}

resource "azurerm_container_registry" "techchak" {
  name                = "${var.organization}${var.prefix}"
  # resource_group_name = azurerm_resource_group.techchak.name
  resource_group_name = "${var.resource_group_name}-${var.prefix}"
  location            = azurerm_resource_group.techchak.location
  sku                 = var.container_sku
}