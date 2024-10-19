terraform {
  backend "azurerm" {
    resource_group_name  = "SkillMastery--rg-statefiles"
    storage_account_name = "skillmasterytfstate"
    container_name       = "terraform-state"
    key                  = "dev/terraform.tfstate"
  }
}