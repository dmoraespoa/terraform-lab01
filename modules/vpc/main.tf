resource "aws_vpc" "this" {
    cidr_block = var.vpc_cidr

  tags = {
    Name = "vpc"
  }
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.this.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_security_group" "custom_sg" {
  name        = "SG tilabs"
  description = "security Group"
  // outras configurações do seu Security Group aqui
}

