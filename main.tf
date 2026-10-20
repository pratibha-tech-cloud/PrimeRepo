resource "azurerm_resource_group" "rgblock" {
  for_each = var.resource_groups
  name = each.value.resourcename
  location = each.value.location
}
resource "azurerm_virtual_network" "vnetblock" {
  for_each = var.vnets
  name = each.value.vnetname
  resource_group_name = each.value.resourcename
  location = each.value.location
  address_space = each.value.addspc
  }