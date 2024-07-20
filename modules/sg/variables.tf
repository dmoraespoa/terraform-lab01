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


variable "vpc_id" {
  description = "vpc_id"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "ingress_cidr_blocks"
  type        = list(string)
}