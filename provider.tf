provider "aws" {
  region = var.region
  assume_role {
    role_arn     = "arn:aws:iam::${var.account}:role/cross_account_tf_role"
    session_name = "terraform"
  }
}
