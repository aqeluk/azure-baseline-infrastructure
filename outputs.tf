output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "virtual_network_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_web_id" {
  value = azurerm_subnet.subnet_web.id
}

output "subnet_data_id" {
  value = azurerm_subnet.subnet_data.id
}
