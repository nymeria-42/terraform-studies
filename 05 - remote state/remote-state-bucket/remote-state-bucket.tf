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
  region  = "us-east-1"
}

data "aws_caller_identity" "current" {} # pegando informações da conta aws

resource "aws_s3_bucket" "remote-state" {
    bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

    versioning {
        enabled = true
    }

    tags = {
        Description = "Stores terraform remote state files"
        Managedby = "terraform"
        Owner = "Camila Lopes"
    }
}

resource "aws_dynamodb_table" "lock-table" {
    name = "tflock-${aws_s3_bucket.remote-state.bucket}"
    read_capacity = 5
    write_capacity = 5
    hash_key = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
}

output "remote_state_bucket" {
    value = aws_s3_bucket.remote-state.bucket
}

output "remote_state_bucket_arn" {
    value = aws_s3_bucket.remote-state.arn
}

