resource "azurerm_management_group_subscription_association" "sub_audit_assoc" {
  management_group_id = "mg-audit"
  subscription_id     = "f34f6196-9ca8-445c-8e11-1db7ece881d4"
}