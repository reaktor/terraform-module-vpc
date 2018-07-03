variable "project_name" {
  type = "string"
}

variable "environment" {
  type = "string"
}

variable "vpc_cidr_block" {
  type = "string"
}

variable "public_subnet_cidr_blocks" {
  type    = "list"
  default = []
}

variable "private_subnet_cidr_blocks" {
  type    = "list"
  default = []
}

variable "nat_gateway_elastic_ips" {
  type    = "list"
  default = []
}

variable "create_elastic_ips" {
  default = true
}

variable "enable_dns_hostnames" {
  default = true
}

variable "enable_dns_support" {
  default = true
}
