# provider "aws" {
#   region = "us-east-1"
# }

# provider "helm" {
#   kubernetes {
#     config_path = "~/.kube/config"
#   }
# }

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
  }
}