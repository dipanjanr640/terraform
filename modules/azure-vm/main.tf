

resource "azurerm_linux_virtual_machine" "terraform_vm1" {
  name                = var.name
  resource_group_name = var.rg_name
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "ubuntu"
  admin_password      = "Indira033@"
  disable_password_authentication = false
  network_interface_ids = [
    var.nic
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

   source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
 
}
resource "null_resource" "pre_requisite_install" {
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt install -y python3",
      "sudo apt install -y ansible",
      "sudo sed -i 's/no/yes/' /etc/ssh/sshd_config.d/60-cloudimg-settings.conf",
      "sudo systemctl restart ssh",
      "sudo apt-get install -y sshpass"
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu"
      password    = "Indira033@"
      host        = azurerm_linux_virtual_machine.terraform_vm1.public_ip_address
    }
  }
  depends_on = [ azurerm_linux_virtual_machine.terraform_vm1 ]
  
}
output "host_ip" {
  value = azurerm_linux_virtual_machine.terraform_vm1.public_ip_address
}
