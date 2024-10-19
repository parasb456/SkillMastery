resource "azurerm_network_security_group" "example" {
  name                = "SkillMastery-sg-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_virtual_network" "example" {
  name                = "SkillMastery-vnet-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space #["10.0.0.0/16"]
  dns_servers         = var.dns_servers #["10.0.0.4", "10.0.0.5"]

  subnet {
    name             = "subnet1"
    address_prefixes = var.address_prefixes_1 #["10.0.1.0/24"]
  }

  subnet {
    name             = "subnet2"
    address_prefixes = var.address_prefixes_2 #["10.0.2.0/24"]
    security_group   = azurerm_network_security_group.example.id

  }

  tags = {
    environment = "Production"
  }
}