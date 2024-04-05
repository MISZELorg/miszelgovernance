terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.8.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-githubtfstates"
    storage_account_name = "miszelgovernance"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc             = true
    subscription_id      = "f80611eb-0851-4373-b7a3-f272906843c4"
    tenant_id            = "48c383d8-47c5-48f9-9e8b-afe4f2519054"
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

# Create the parent management group
resource "azurerm_management_group" "mg_miszel" {
  display_name = "mg-miszel"
}

# Create the child management group
resource "azurerm_management_group" "mg_platform" {
  display_name               = "mg-platform"
  parent_management_group_id = azurerm_management_group.mg_miszel.id
  depends_on                 = [azurerm_management_group.mg_miszel]
}
