terraform {
 required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.43.0"
    }
  }
backend "azurerm" {
    resource_group_name  = "Rg-Stg"
    storage_account_name = "infrastorage14"
    container_name       = "infracontainer"
    key                  = "myproject.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "b7e2d3dd-2fa8-4498-90b2-8ed4b08e15ee"
}
