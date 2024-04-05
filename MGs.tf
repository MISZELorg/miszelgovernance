# # Create the parent management group
# resource "azurerm_management_group" "mg_miszel" {
#   display_name = "mg-miszel"
# }

# # Create the child management group
# resource "azurerm_management_group" "mg_platform" {
#   display_name               = "mg-platform"
#   parent_management_group_id = azurerm_management_group.mg_miszel.id
#   depends_on                 = [azurerm_management_group.mg_miszel]
# }