terraform {
  required_version = "1.5.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.8.0"
    }
  }

  backend "s3" {
  } # nao da pra usar variaveis dentro desse bloco, pois é o core do terraform
}