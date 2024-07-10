resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  key_name = var.key_name
  associate_public_ip_address = true
  security_groups = [var.security_group_id]  # Associando o Security Group

  tags = {
    Name = "ec2-instance"
  }
}