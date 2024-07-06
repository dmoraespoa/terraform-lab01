output "aws_ami" {
  value = data.aws_ami.ubuntu.id
  description = "Imagem AMI Ubuntu"
}

output "aws_ami_arch" {
  value = data.aws_ami.ubuntu.architecture
  description = "Arquitetura"
}

output "aws_s3_name" {
  value = aws_s3_bucket.s3lab.bucket
  description = "Bucket Name"
}