resource "azurerm_resource_group" "techchak" {
  name     = "${var.organization}-${var.prefix}"
  location = var.location
}

resource "azurerm_container_registry" "techchak" {
  name                = "${var.organization}_${var.prefix}"
  resource_group_name = azurerm_resource_group.techchak.name
  location            = azurerm_resource_group.techchak.location
  sku                 = var.container_sku
}