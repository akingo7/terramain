terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}

provider "aws" {
  region = var.region
}


module "s3-backend-app" {
  source  = "app.terraform.io/gabrieldevops/s3-backend-app/aws"
  version = "1.0.0"
  region  = var.region
  dev_prefix  = var.prefix
  prod_prifix = var.prefix
  name    = var.name
}