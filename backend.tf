terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket004"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}