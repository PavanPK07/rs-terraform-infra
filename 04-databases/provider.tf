terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.89.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket         = "rs-a-z"
    key            = "databases"
    region         = "us-east-1"
    dynamodb_table = "rs-table"
  }
}

provider "aws" {
  region = "us-east-1"
}