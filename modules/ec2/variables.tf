variable "name" {
  description = "nome da instancia"
  type = string
}

variable "ami_id" {
  description = "ID da AMI utilizada"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia"
  type = string
  default = "t3.micro"
}

variable "key_name" {
  description = "Nome da Chave"
  type = string
  default = "tilabs"
}

variable "tags" {
  description = "tags de identificação"
  type = map(string)
}