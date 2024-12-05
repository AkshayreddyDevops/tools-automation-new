terraform {
  backend "s3" {
    bucket = "tools-automation-new"
    key = "tools/terraform.tfstate"
    region = "us-east-1"
  }
}