terraform {
  backend "s3" {
    bucket = "tools-automation-new"
    key = "tools/terraform.tfstate"
    region = "us-east-1"
  }
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
      region = "us-east-1"
    }
     helm = {
       kubernetes = {
        config_path = "~/.kube/config"
       }
     }
    s3 = {
    bucket = "tools-automation-new"
    key = "tools/terraform.tfstate"
    region = "us-east-1"
  }     
  }
}