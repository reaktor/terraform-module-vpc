resource "aws_vpc" "main" {
  cidr_block           = "${var.vpc_cidr_block}"
  enable_dns_support   = "${var.enable_dns_support}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"

  tags {
    Name    = "${var.project_name}-vpc"
    Project = "${var.project_name}"
  }
}

resource "aws_internet_gateway" "main" {
  vpc_id = "${aws_vpc.main.id}"

  tags {
    Name        = "${var.project_name}-internet-gateway"
    Project     = "${var.project_name}"
    Environment = "${var.environment}"
  }
}
