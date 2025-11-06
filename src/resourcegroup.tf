resource "azurerm_resource_group" "default_rg" {
  name     = "bskt-app-${var.resource_group_suffix}"
  location = "northeurope"
}

#   tags = {
#     environment = "${terraform.workspace}"
#   }