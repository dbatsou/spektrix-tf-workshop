resource "azurerm_app_service_plan" "default_plan" {
  name                = "${azurerm_resource_group.default_rg.name}"
  location            = "${azurerm_resource_group.default_rg.location}"
  resource_group_name = "${azurerm_resource_group.default_rg.name}"

  # Define Linux as Host OS
  kind = "Linux"
reserved = true # Mandatory for Linux plans

  # Choose size
  sku {
    tier = "Basic"
    size = "B1"
  }
}