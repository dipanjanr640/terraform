module "manage_myvm" {
  source = "./module/azure-vm"
  location = azurerm_resource_group.terraform_rg.location
  name = "managevm121212"
  nic = azurerm_network_interface.terraform_network_interface1.id
  rg_name = azurerm_resource_group.terraform_rg.name
}
