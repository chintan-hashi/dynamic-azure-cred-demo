terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    skip_provider_registration = true
    features {}
    
    subscription_id         = "1d76268a-e412-471a-b8b4-69167bd26bb1"
    tenant_id               = "237fbc04-c52a-458b-af97-eaf7157c0cd4"
}


data "azurerm_resource_group" "example" {
  name = "vault-wfc-demo"
}

output "id" {
  value = data.azurerm_resource_group.example.id
}