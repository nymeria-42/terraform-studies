terraform {
  required_version = "1.5.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.8.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket-test" {
  bucket = "my-tf-test-bucket12423453464"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "terraform"
    Owner       = "Camila Lopes"
    UpdatedAt   = "2023-07-20"
  }
}