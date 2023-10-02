terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
    azuread = {
      source = "hashicorp/azuread"
    }
  }
}

provider "azurerm" {
  features {}
#   client_id       = var.client_id
#   client_secret   = var.client_secret
#   tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

provider "azuread" {
#   client_id     = var.client_id
#   client_secret = var.client_secret
#   tenant_id     = var.tenant_id
}


data "azurerm_client_config" "current" {}