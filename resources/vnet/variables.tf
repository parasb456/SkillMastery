variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "dns_servers" {
  type = list(string)
}

variable "address_prefixes_1" {
  type = list(string)
}

variable "address_prefixes_2" {
  type = list(string)
}

variable "environment" {
  type = string
}