data "azurerm_management_group" "top_mg_id" {
  name = var.top_mg_name
}

data "azurerm_management_group" "mg_platform_id" {
  name = var.platform_mg_name
}

data "azurerm_management_group" "mg_lzs_id" {
  name = var.lzs_mg_name
}

data "azurerm_management_group" "mg_decom_id" {
  name = var.decom_mg_name
}

data "azurerm_management_group" "mg_sandbox_id" {
  name = var.sandbox_mg_name
}

data "azurerm_management_group" "mg_audit_id" {
  name = var.audit_mg_name
}

# data "azurerm_management_group" "mg_backend_id" {
#   name       = var.backend_mg_name
#   depends_on = [azurerm_management_group.mg_backend]
# }

data "azurerm_management_group" "mg_sharedservices_id" {
  name = var.sharedservices_mg_name
}

data "azurerm_management_group" "mg_identity_id" {
  name = var.identity_mg_name
}

data "azurerm_management_group" "mg_management_id" {
  name = var.management_mg_name
}

data "azurerm_management_group" "mg_connectivity_id" {
  name = var.connectivity_mg_name
}

data "azurerm_management_group" "mg_corp_id" {
  name = var.corp_mg_name
}

data "azurerm_management_group" "mg_online_id" {
  name = var.online_mg_name
}

data "azurerm_management_group" "mg_hybrid_id" {
  name = var.hybrid_mg_name
}