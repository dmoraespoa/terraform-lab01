provider "aws" {
  region = var.region
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = var.vpc_cidr
}

module "ec2" {
  source = "./modules/ec2"

  ami_id        = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
  key_name      = var.key_name
  security_group_id = var.security_group_id
}

module "s3" {
  source = "./modules/s3"

  bucket_name = var.bucket_name
}

