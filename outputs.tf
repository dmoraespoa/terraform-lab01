output "instance_type" {
  value = var.instance_type
}

output "ec2_public_ip" {
  description = "Endereço IP público da instância EC2"
  value       = module.ec2.public_ip
}

output "vpc_id" {
    value = module.vpc
}

output "vpc_security_group_id" {
  description = "ID do Security Group criado no módulo de VPC"
  value       = module.vpc.security_group_id
}

output "s3_bucket_arn" {
  description = "ARN do bucket S3 criado no módulo de S3"
  value       = module.s3.bucket_arn
}

