variable "bucket_name" {
  description = "Nome do Bucket"
  type        = string
}

variable "tags" {
  description = "tags de identificacao s3"
  type        = map(string)
}