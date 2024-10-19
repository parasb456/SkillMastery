module "resource_group_name" {
    source = "../resources/resource_group"
    location = var.location
    environment = var.environment
}

module "vnet" {
  source = "../resources/vnet"
  environment = var.environment
  location = var.location
  dns_servers = var.dns_servers
  resource_group_name = module.resource_group_name.resource_group_name
  address_prefixes_1 = var.address_prefixes_1
  address_prefixes_2  = var.address_prefixes_2
  address_space = var.address_space
}