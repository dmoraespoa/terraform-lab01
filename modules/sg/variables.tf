variable "name_sg" {
  description = "Nome do Security Group"
  type = string
}

variable "description" {
  description = "Descrição do Security Group"
  type = string
}

variable "ingress_rules" {
  description = "Regras de entrada"
  type = list(string)
}