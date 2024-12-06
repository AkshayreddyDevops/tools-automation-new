terraform {
  backend "s3" {
    bucket = "tools-automation-new"
    key    = "tools-v1/terraform.tfstate"
    region = "us-east-1"
  }
}