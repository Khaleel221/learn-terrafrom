resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "devops79-terraform"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}