terraform {
  backend "azurerm" {
    resource_group_name  = "bskt-infra133-dimi-rg" #hard code variable value
    storage_account_name = "bsktstoraage1dimi"     #hard code variable value
    container_name       = "bskt-container-terraform"
    key                  = "terraform.tfstate"
  }


  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.51.0"
    }
  }
}


provider "azurerm" {
  subscription_id = var.subscription_id # Replace with your Azure subscription ID (use variables for security)
  tenant_id       = var.tenant_id       # Replace with your Azure tenant ID

  features {}
}
