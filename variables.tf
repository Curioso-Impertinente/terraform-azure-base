variable "name" {
  type = string
}

variable "resource_group" {
  type = map(any)
}

variable "address_space" {
  type = list(any)
}

variable "dns_servers" {
  type = list(any)
}

variable "tags" {
  type    = map(any)
  default = {}
}

variable "environment" {
  type = string
}

variable "ngw_pip_sku" {
  type    = string
  default = "Basic"
}
