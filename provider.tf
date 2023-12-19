terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.1.0"

  #TODO-insert
}

provider "aws" {
  region = "us-east-1"
}