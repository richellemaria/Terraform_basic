terraform {
  backend "s3" {
    bucket         = "terrafrom-state-file-s3"
    key            = "05-remote/terraform.tfstate"     # This is like the folder path that you prefer giving
    region         = "us-east-1"
  }
}