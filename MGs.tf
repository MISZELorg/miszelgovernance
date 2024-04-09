# Create the top management group
resource "azurerm_management_group" "mg_top" {
  display_name = var.top_mg_name
  name         = var.top_mg_name
}

# Create the child management groups
resource "azurerm_management_group" "mg_platform" {
  display_name               = var.platform_mg_name
  name                       = var.platform_mg_name
  parent_management_group_id = azurerm_management_group.mg_top.id
  depends_on                 = [azurerm_management_group.mg_top]
}

resource "azurerm_management_group" "mg_lzs" {
  display_name               = var.lzs_mg_name
  name                       = var.lzs_mg_name
  parent_management_group_id = azurerm_management_group.mg_top.id
  depends_on                 = [azurerm_management_group.mg_top]
}

resource "azurerm_management_group" "mg_decom" {
  display_name               = var.decom_mg_name
  name                       = var.decom_mg_name
  parent_management_group_id = azurerm_management_group.mg_top.id
  depends_on                 = [azurerm_management_group.mg_top]
}

resource "azurerm_management_group" "mg_sandbox" {
  display_name               = var.sandbox_mg_name
  name                       = var.sandbox_mg_name
  parent_management_group_id = azurerm_management_group.mg_top.id
  depends_on                 = [azurerm_management_group.mg_top]
}

resource "azurerm_management_group" "mg_audit" {
  display_name               = var.audit_mg_name
  name                       = var.audit_mg_name
  parent_management_group_id = azurerm_management_group.mg_top.id
  depends_on                 = [azurerm_management_group.mg_top]
}

# Create the grandchild management groups

resource "azurerm_management_group" "mg_sharedservices" {
  display_name               = var.sharedservices_mg_name
  name                       = var.sharedservices_mg_name
  parent_management_group_id = azurerm_management_group.mg_platform.id
  depends_on                 = [azurerm_management_group.mg_platform]
}

resource "azurerm_management_group" "mg_identity" {
  display_name               = var.identity_mg_name
  name                       = var.identity_mg_name
  parent_management_group_id = azurerm_management_group.mg_platform.id
  depends_on                 = [azurerm_management_group.mg_platform]
}

resource "azurerm_management_group" "mg_management" {
  display_name               = var.management_mg_name
  name                       = var.management_mg_name
  parent_management_group_id = azurerm_management_group.mg_platform.id
  depends_on                 = [azurerm_management_group.mg_platform]
}

resource "azurerm_management_group" "mg_connectivity" {
  display_name               = var.connectivity_mg_name
  name                       = var.connectivity_mg_name
  parent_management_group_id = azurerm_management_group.mg_platform.id
  depends_on                 = [azurerm_management_group.mg_platform]
}

resource "azurerm_management_group" "mg_corp" {
  display_name               = var.corp_mg_name
  name                       = var.corp_mg_name
  parent_management_group_id = azurerm_management_group.mg_lzs.id
  depends_on                 = [azurerm_management_group.mg_lzs]
}

resource "azurerm_management_group" "mg_online" {
  display_name               = var.online_mg_name
  name                       = var.online_mg_name
  parent_management_group_id = azurerm_management_group.mg_lzs.id
  depends_on                 = [azurerm_management_group.mg_lzs]
}

resource "azurerm_management_group" "mg_hybrid" {
  display_name               = var.hybrid_mg_name
  name                       = var.hybrid_mg_name
  parent_management_group_id = azurerm_management_group.mg_lzs.id
  depends_on                 = [azurerm_management_group.mg_lzs]
}

resource "azurerm_management_group" "mg_hybrid2" {
  display_name               = var.hybrid_mg_name2
  name                       = var.hybrid_mg_name2
  parent_management_group_id = azurerm_management_group.mg_lzs.id
  depends_on                 = [azurerm_management_group.mg_lzs]
}
