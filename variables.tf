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

variable "enable_dns_support" {
  default = true
}

variable "enable_dns_hostnames" {
  default = true
}
