terraform {
  backend "s3" {
    bucket = "tools-automation-new"
    key = "tools/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }
  
}