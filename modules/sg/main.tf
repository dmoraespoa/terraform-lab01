module "sg" {
  source = "terraform-aws-modules/security-group/aws"

  name                = var.name_sg
  vpc_id              = var.vpc_id
  description         = var.description
  ingress_rules       = var.ingress_rules
  ingress_cidr_blocks = var.ingress_cidr_blocks
}




