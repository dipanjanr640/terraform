# Name of the virtual machine
variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
}

# Location where the resources will be created
variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
}

# Name of the resource group
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

# Size of the virtual machine
variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
  default     = "Standard_DS1_v2"  # Set a default VM size, can be overridden
}

# Network interface ID (passed from the configuration calling the module)
variable "network_interface_id" {
  description = "The ID of the network interface to attach to the virtual machine."
  type        = string
}

# Admin username for the VM
variable "admin_username" {
  description = "The admin username for the virtual machine."
  type        = string
}

# Admin password for the VM (for simplicity, using string here, but you should use sensitive data management for passwords)
variable "admin_password" {
  description = "The admin password for the virtual machine."
  type        = string
}

# Additional variables (optional) for more customization can be added here as needed
