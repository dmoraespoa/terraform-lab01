module "sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = var.name_sg
  description = var.description
  ingress_rules            = var.ingress_rules
}




