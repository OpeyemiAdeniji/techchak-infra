resource "azurerm_resource_group" "techchak" {
  name     = "${var.prefix}-resources"
  location = "${var.location}"
}

resource "azurerm_container_registry" "techchak" {
  name                = "${var.prefix}registry"
  resource_group_name = "${azurerm_resource_group.techchak.name}"
  location            = "${azurerm_resource_group.techchak.location}"
  sku                 = "Standard"
}