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
  region  = var.aws_region
  profile = var.aws_profile
}


resource "aws_instance" "test_instance" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  tags          = var.instance_tags
}