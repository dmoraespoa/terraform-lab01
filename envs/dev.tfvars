env = "dev"
account = "851725532590"
region             = "us-east-1"
name = "desafio-terraform-tilabs"
ami_id = "ubuntu"
key_name = "dev-keylabaws"
vpc_name = "tilabs-vpc"
vpc_cidr = "10.128.0.0/16"
tags   = { "SOURCE" = "terraform", "PRODUCT" = "General", "MANAGED" = "iac" }
public_subnets = ["10.128.0.0/24", "10.128.2.0/24","10.128.4.0/24"]
private_subnets = ["10.128.6.0/24", "10.128.8.0/24","10.128.10.0/24"]
name_sg = "sg-tilabs"
bucket_name = "ti-labs-community"
description = "Default-Rule"
ingress_rules = ["http-80-tcp"]
ingress_cidr_blocks = ["0.0.0.0/0"]
  