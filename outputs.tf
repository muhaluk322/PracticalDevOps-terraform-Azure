output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "azure_vm_name" {
  value = azurerm_linux_virtual_machine.main.name
}

output "azure_vm_location" {
  value = azurerm_resource_group.main.location
}

output "vm_size" {
  value = azurerm_linux_virtual_machine.main.size
}

output "azure_os_disk_name" {
  value = azurerm_linux_virtual_machine.main.os_disk[0].name
}

output "public_ip_address" {
  value = azurerm_linux_virtual_machine.main.public_ip_address
}

output "tls_private_key" {
  # You can generate a private key or use an existing one based on your requirements.
  value = jsondecode(azapi_resource_action.ssh_public_key_gen.output).publicKey
}
