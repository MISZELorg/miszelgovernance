# Create the top management group
resource "azurerm_management_group" "top_mg" {
  display_name = "l1mg1"
  name         = "l1mg1"
}

# Create the child management groups
resource "azurerm_management_group" "l2mgs" {
  for_each                   = var.l2mg_map
  display_name               = each.value.name
  name                       = each.value.name
  parent_management_group_id = azurerm_management_group.top_mg.id
  depends_on                 = [azurerm_management_group.top_mg]
}