variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "Bloco cidr da VPC"
  type        = string
}

variable "region" {
  description = "Zonas"
  type        = string
}

variable "private_subnets" {
  description = "Sub-redes privadas"
  type        = list(string)
}

variable "public_subnets" {
  description = "Sub-redes públicas"
  type        = list(string)
}

variable "tags" {
  description = "tags de identificacao vpc"
  type        = map(string)
}

variable "env" {
  description = "ambiente"
  type        = string
}