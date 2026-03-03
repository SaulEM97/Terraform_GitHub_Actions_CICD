provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "saul-s3bucket-updated"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "saul-dblocks-updated"
    encrypt        = true
  }
}
