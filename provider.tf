provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket       = "zamacraig-terraform-backend"
    key          = "Projects/High-Availability-Web-App/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}