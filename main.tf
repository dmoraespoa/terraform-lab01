module "vpc" {
  source = "./modules/vpc"

  vpc_name        = "${var.env}-${var.vpc_name}"
  vpc_cidr        = var.vpc_cidr
  env             = var.env
  region          = var.region
  tags            = var.tags
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "ec2" {
  source = "./modules/ec2"

  name          = "${var.env}-${var.name}"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = merge(var.tags, { "Name" = "${var.name}" })
}

module "s3" {
  source = "./modules/s3"

  bucket_name = var.bucket_name
  tags        = merge(var.tags, { "Name" = "${var.bucket_name}" })
}

module "sg" {
  source = "./modules/sg"

  name_sg             = "${var.env}-${var.name}"
  description         = var.description
  ingress_rules       = var.ingress_rules
}







