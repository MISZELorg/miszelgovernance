resource "azurerm_management_group_subscription_association" "sub_audit_assoc" {
  management_group_id = data.azurerm_management_group.mg_audit_id.id
  subscription_id     = var.sub_audit_id
}

resource "azurerm_management_group_subscription_association" "sub_sandbox_assoc" {
  management_group_id = data.azurerm_management_group.mg_sandbox_id.id
  subscription_id     = var.sub_sandbox_id
}

resource "azurerm_management_group_subscription_association" "sub_alzcorp_assoc" {
  management_group_id = data.azurerm_management_group.mg_corp_id.id
  subscription_id     = var.sub_alzcorp_id
}

resource "azurerm_management_group_subscription_association" "sub_alzonline_assoc" {
  management_group_id = data.azurerm_management_group.mg_online_id.id
  subscription_id     = var.sub_alzonline_id
}

# resource "azurerm_management_group_subscription_association" "sub_sharedservices_assoc" {
#   management_group_id = data.azurerm_management_group.mg_sharedservices_id.id
#   subscription_id     = var.sub_sharedservices_id
# }

# resource "azurerm_management_group_subscription_association" "sub_identity_assoc" {
#   management_group_id = data.azurerm_management_group.mg_identity_id.id
#   subscription_id     = var.sub_identity_id
# }

# resource "azurerm_management_group_subscription_association" "sub_management_assoc" {
#   management_group_id = data.azurerm_management_group.mg_management_id.id
#   subscription_id     = var.sub_management_id
# }

# resource "azurerm_management_group_subscription_association" "sub_connectivity_assoc" {
#   management_group_id = data.azurerm_management_group.mg_connectivity_id.id
#   subscription_id     = var.sub_connectivity_id
# }