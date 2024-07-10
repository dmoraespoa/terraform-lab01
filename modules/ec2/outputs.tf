output "instance_id" {
  value = aws_instance.this.id
}

output "public_ip" {
  description = "Endereço IP público da instância EC2"
  value       = aws_instance.this.public_ip
}

output "subnet_id" {
  description = "ID da Subnet onde a instância EC2 está lançada"
  value       = var.subnet_id
}