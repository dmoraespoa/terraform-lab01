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

module "s3" {
  source = "./modules/s3"

  bucket_name = "${var.env}-${var.bucket_name}"
  tags        = merge(var.tags, { "Name" = "${var.bucket_name}" })
}

module "sg" {
  source              = "./modules/sg"
  vpc_id              = module.vpc.vpc_id
  name_sg             = "${var.env}-${var.name}"
  description         = var.description
  ingress_rules       = var.ingress_rules
  ingress_cidr_blocks = var.ingress_cidr_blocks
  depends_on             = [module.vpc]
}


module "ec2" {
  source = "./modules/ec2"

  name                   = "${var.env}-${var.name}"
  ami_id                 = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = element(module.vpc.private_subnets, 0)
  tags                   = merge(var.tags, { "Name" = "${var.name}" })
  vpc_security_group_ids = [module.sg.sg_id]
  depends_on             = [module.vpc, module.sg]
}




