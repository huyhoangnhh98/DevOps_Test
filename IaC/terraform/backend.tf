terraform {
  backend "s3" {
    bucket         = "s3-bucket-backend"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}