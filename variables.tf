variable "region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}

variable "account" {
  description = "account AWS"
  type        = string
  default     = ""
}

variable "vpc_cidr" {
  description = "Bloco cidr da VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "env" {
  description = "ambiente"
  type        = string
}

variable "private_subnets" {
  description = "sub-rede privada"
  type        = list(string)
}

variable "public_subnets" {
  description = "sub-rede publica"
  type        = list(string)
}

variable "tags" {
  description = "tags"
  type        = map(string)
}

variable "vpc_name" {
  description = "nome da vpc"
  type        = string
}

variable "bucket_name" {
  description = "Nome do Bucket"
  type        = string
}

variable "name" {
  description = "nome da instancia"
  type        = string
}

variable "ami_id" {
  description = "ID da AMI utilizada"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Nome da Chave"
  type        = string
  default     = "tilabs"
}

variable "name_sg" {
  description = "Nome do Security Group"
  type        = string
}

variable "description" {
  description = "Descrição do Security Group"
  type        = string
}

variable "ingress_rules" {
  description = "List of ingress rules to create by name"
  type        = list(string)
  default     = []
}

variable "ingress_cidr_blocks" {
  description = "ingress_cidr_blocks"
  type        = list(string)
}
