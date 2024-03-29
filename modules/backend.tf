terraform {
  backend "s3" {
    bucket         = "terrafrom-state-file-s3"
    key            = "modules-example/terraform.tfstate"     # This is like the folder path that you prefer giving
    region         = "us-east-1"
  }
}

provider "aws" {
    region  = "us-east-1"
}