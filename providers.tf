provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "saul-s3bucket-03march"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "saul-03march-dblocks"
    encrypt        = true
  }
}
