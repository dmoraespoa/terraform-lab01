variable "region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "Bloco cidr da VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "ami_id" {
  description = "ID da imagem"
  type        = string
}

variable "security_group_id" {
  description = "ID do Security Group a ser associado com a instância EC2"
  type        = string
  default = "sg-0912ecb56d7cc7815"
}

variable "instance_type" {
  description = "Tipo de ec2"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Nome da chave"
  type        = string
  default = "tilabs"
}

variable "bucket_name" {
  description = "Nome do Bucket"
  type        = string
  default = "tilabs-joao"
}