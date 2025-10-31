terraform {
  backend "azurerm" {
    resource_group_name  = "bskt-infra133"
    storage_account_name = "bsktstoraage1"
    container_name       = "bskt-container-terraform"
    key                  = "terraform.tfstate"
  }
}
