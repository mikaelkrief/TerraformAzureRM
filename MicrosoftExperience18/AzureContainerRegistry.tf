# ----------------------------------------------------
# Tested & validated with Terraform 1.11.8 
# 06 nov 2018
# ----------------------------------------------------
# Terraform code to deploy an Azure Container Registry
# Variable are defined in Var-AzureContainerRegistry.tf
# ----------------------------------------------------

# Azure Container Registry
resource "azurerm_container_registry" "Terra-ACR" {
  name                = "${var.ACR-Name}"
  resource_group_name = "${azurerm_resource_group.Terra-RG.name}"
  location            = "${azurerm_resource_group.Terra-RG.location}"
  admin_enabled       = "${var.ACR-Admin-Enabled}"
  sku                 = "${var.ACR-SKU}"
}