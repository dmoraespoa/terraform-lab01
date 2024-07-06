resource "aws_s3_bucket" "s3lab" {
  bucket        = "${var.env}-tilabs-lab01"
  force_destroy = false
  tags = {
    "Produto" = "Site",
    "source"  = "Terraform"
  }
}