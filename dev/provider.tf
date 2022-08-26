terraform {
  required_version = ">= 0.13"
}

# Configure Azure provider
provider "azurerm" {
  environment = "public"
  version     = ">= 2.25.0"
  features {}
}
