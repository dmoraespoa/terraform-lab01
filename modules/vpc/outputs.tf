output "vpc_id" {
    value = aws_vpc.this.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "security_group_id" {
  description = "ID do Security Group criado no módulo de VPC"
  value       = aws_security_group.custom_sg.id
}
