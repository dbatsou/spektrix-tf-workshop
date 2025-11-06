
# Create an Azure Web App for Containers in that App Service Plan
resource "azurerm_app_service" "ghostblog" {
  name                = "${azurerm_resource_group.default_rg.name}"
  location            = "${azurerm_resource_group.default_rg.location}"
  resource_group_name = "${azurerm_resource_group.default_rg.name}"
  app_service_plan_id = "${azurerm_app_service_plan.default_plan.id}"

  app_settings = {
    NODE_ENV =	"production"
    url = "bskt-34567-${var.resource_group_suffix}.azurewebsites.net"
  }

  # Configure Docker Image to load on start
  site_config {
    linux_fx_version = "DOCKER|ghost:3-alpine"
    always_on        = "true"
  }

  identity {
    type = "SystemAssigned"
  }
}