data "azurerm_resource_group" "resource_group" {

  name     = var.name
}

output "resource_group" {
  value = data.azurerm_resource_group.resource_group
}