variable "location" {
  type        = string
  description = "Resource group location. (Default: francecentral)"
  default     = "francecentral"
}

variable "address_space" {
  type        = list(any)
  description = "IP cidr block."
}

variable "dns_servers" {
  type        = list(any)
  description = "DNS servers IPs. (Default: Azure DNS 168.63.129.16)"
  default     = ["168.63.129.16"]
}

variable "tags" {
  type        = map(any)
  description = "Tags for resources."
  default     = {}
}

variable "environment" {
  type        = string
  description = "Project's environment."
}

variable "subnets" {
  type        = list(any)
  description = "Subnets in Vnet."
  default     = []
}

variable "natgw_availability_zones" {
  type        = list(any)
  description = "Availability zones for Nat Gateway."
  default     = ["1"]
}

variable "tenant_id" {
  type        = string
  description = "Tenant ID to be used with keyvault creation."
}