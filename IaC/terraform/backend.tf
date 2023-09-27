terraform {
  backend "s3" {
    bucket         = var.back_end_bucket_name
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}