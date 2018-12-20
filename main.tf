terraform {
  backend "s3" {
    bucket         = "bright-terraform-backend"
    dynamodb_table = "terraform-state-locking"
    key            = "main/terraform.tfstate"
    region         = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}