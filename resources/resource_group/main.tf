resource "azurerm_resource_group" "example" {
  name     = "SkillMastery-${var.environment}"
  location = var.location #"West Europe"
}

