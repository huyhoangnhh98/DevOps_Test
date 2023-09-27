variable "environment" {
    description = "Environment for IaC"
    type        = string
}

variable "domain_website" {
    description = "The domain of website."
    type = string
}

variable "region" {
    description = "The AWS region."
    type = string
}

variable "access_key" {
    description = "The AWS access key."
    type = string
}

variable "secret_key" {
    description = "The AWS secret key."
    type = string
}

variable "back_end_bucket_name" {
    description = "The S3 back end bucket name."
    type = string
}