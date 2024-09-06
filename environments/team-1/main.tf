module "team1_vm" {
  source = "../../modules/azure-vm"  # Path to the module

  # Pass input variables
  vm_name              = var.vm_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  vm_size              = var.vm_size
  admin_username       = var.admin_username
  admin_password       = var.admin_password
}

# Optionally define any team-specific resources, like outputs or additional configurations.
