location           = "Central India"
environment        = "dev"
dns_servers        = ["10.0.0.4", "10.0.0.5"]
address_space      = ["10.0.0.0/16"]
address_prefixes_1 = ["10.0.1.0/24"]
address_prefixes_2 = ["10.0.2.0/24"]
subscription_id    = "835ea7f0-35df-4192-874b-098bc1bc6436"

docker_image = "DOCKER|hello-world:latest"
app_service_identity = "SystemAssigned"
acr_sku = "Basic"
admin_enabled = true
asp_os_type = "Linux"
asp_sku_name = "F1"
