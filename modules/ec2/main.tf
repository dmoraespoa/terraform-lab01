module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = var.name
  instance_type          = var.instance_type
  key_name               = var.key_name
  tags = merge(var.tags, { "Name" = "${var.name}"})
}



