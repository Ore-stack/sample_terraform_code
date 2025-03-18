terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.22.0"
    }
  }
  backend "s3" {
    bucket        = "lanche-statefile-bucket"
    region        = "us-east-1"
    key           = "dev/state/terraform.tfstate"
    table         = "lanche-statefile-table"
  }
}

provider "aws" {
  region  = "us-east-1"
}
