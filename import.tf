# Resource Group

resource "azurerm_resource_group" "main" {
  name     = "${var.resource_group_name_prefix}-${var.resource_group_name}"
  location = var.resource_group_location
}