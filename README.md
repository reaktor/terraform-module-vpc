# Reaktor Common Terraform Modules - VPC

This Terraform module creates a basic multi-AZ AWS VPC setup that is very common in many projects.
It is intended to be used as a starting point for your VPC configuration.

## Architecture

The module creates a two-tier VPC networking setup. The module can create either private or public subnets
based on the amount of valid CIDR blocks you give to the module. Considering an example where the module is given
three CIDR blocks for private subnets and three CIDR blocks for public subnets, the VPC architecture should be something like this:

![VPC Architecture](architecture.png)

## Usage

You can use this module directly from GitHub by calling the module in your Terraform config like this:

```hcl
module "network" {
  source = "github.com/reaktor/terraform-module-vpc"

  project_name = "example-project"
  environment  = "dev"

  vpc_cidr_block = "10.10.8.0/21"

  private_subnet_cidr_blocks = [
    "10.10.8.0/24",
    "10.10.9.0/24",
    "10.10.10.0/24",
  ]

  public_subnet_cidr_blocks = [
    "10.10.12.0/24",
    "10.10.13.0/24",
    "10.10.14.0/24",
  ]
}
```

Alternatively you can copy this module into your Terraform configurations and call it with the `source = path/to/module` syntax.