  terraform {
    backend "azurerm" {
    resource_group_name = "ansible_rg_dev"
    storage_account_name = "tfbackendstorage12345678"
    container_name = "tfbackends"
    key = "terraform.tfstate"
    access_key = "/9/4pyDdoVVLsH/XYGlmdqQq0e5mB0LyB2pVBDIs6fe+qqfMpr+oN6LnYYDOwf0XKXJ9MAXj6fxf+AStas+IOg=="    
  }
  }