variable "ami_id" {
  description = "ID da AMI utilizada"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia"
  type = string
  default = "t3.micro"
}

variable "security_group_id" {
  description = "ID do Security Group a ser associado com a instância EC2"
  type        = string
}

variable "subnet_id" {
  description = "ID da subnet"
  type = string
}

variable "key_name" {
  description = "Nome da Chave"
  type = string
  default = "tilabs"
}