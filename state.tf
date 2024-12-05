terraform {
  backend "s3" {
    bucket = "tools-automation-new"
    key = "tools/terraform.tfstate"
    reagion = "us-east-1"
  }
}