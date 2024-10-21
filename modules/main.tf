module "resource_group_name" {
  source      = "../resources/resource_group"
  location    = var.location
  environment = var.environment
}

module "vnet" {
  source              = "../resources/vnet"
  environment         = var.environment
  location            = var.location
  dns_servers         = var.dns_servers
  resource_group_name = module.resource_group_name.resource_group_name
  address_prefixes_1  = var.address_prefixes_1
  address_prefixes_2  = var.address_prefixes_2
  address_space       = var.address_space
}

data "azurerm_container_registry" "acr" {
  name                = module.acr.acr_name
  resource_group_name = module.resource_group_name.resource_group_name

  depends_on = [module.acr]
}


module "acr" {
  source              = "../resources/acr"
  resource_group_name = module.resource_group_name.resource_group_name
  acr_sku             = var.acr_sku
  location            = var.location
  environment         = var.environment
}

module "app_service" {
  source                          = "../resources/app_service"
  docker_image                    = var.docker_image
  location                        = var.location
  environment                     = var.environment
  # DOCKER_REGISTRY_SERVER_PASSWORD = data.azurerm_container_registry.acr.admin_password
  resource_group_name             = module.resource_group_name.resource_group_name
  acr_id                          = module.acr.id
  # DOCKER_REGISTRY_SERVER_URL      = data.azurerm_container_registry.acr.login_server
  # DOCKER_REGISTRY_SERVER_USERNAME = data.azurerm_container_registry.acr.admin_username
  service_plan_id                 = module.app_service_plan.id
  app_service_identity            = var.app_service_identity

  depends_on = [ module.app_service_plan ]
}

module "app_service_plan" {
  source              = "../resources/app_service_plan"
  asp_os_type         = var.asp_os_type
  asp_sku_name        = var.asp_sku_name
  location            = var.location
  environment         = var.environment
  resource_group_name = module.resource_group_name.resource_group_name
}