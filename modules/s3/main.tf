module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = var.bucket_name
  acl    = "private"

  tags = merge(var.tags, { "Name" = "${var.bucket_name}"})
}