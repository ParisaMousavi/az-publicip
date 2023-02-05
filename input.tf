variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "allocation_method" {
  type    = string
  default = "Static"
}

variable "sku" {
  description = "Public IP Standard SKUs require allocation_method to be set to Static."
  type        = string
  default     = "Standard"
}

variable "additional_tags" {
  default = {}
  type    = map(string)
}

variable "reverse_fqdn" {
  type = string
}

variable "ip_version" {
  type    = string
  default = "IPv4"
}