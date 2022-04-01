variable "name" {
  type = string
  description = "Project name."
}

variable "location" {
  type = string
  description = "Resource group location. (Default: francecentral)"
  default = "francecentral"
}

variable "address_space" {
  type = list(any)
  description = "IP cidr block."
}

variable "dns_servers" {
  type = list(any)
  description = "DNS servers IPs. (Default: Azure DNS 168.63.129.16)"
  default = ["168.63.129.16"]
}

variable "tags" {
  type    = map(any)
  description = "Tags for resources."
  default = {}
}

variable "environment" {
  type = string
  description = "Project's environment."
}

variable "ngw_pip_sku" {
  type    = string
  description = "SKU tier for Nat Gateway public IP. (Default: Basic)"
  default = "Basic"
}
