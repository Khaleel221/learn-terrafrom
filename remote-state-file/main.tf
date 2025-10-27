resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "d79-terraform"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}