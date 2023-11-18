# Terrraform Block
terraform {
  required_version = "~> 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }
}

# Provider Block
provider "aws" {
  region = var.aws_region
}