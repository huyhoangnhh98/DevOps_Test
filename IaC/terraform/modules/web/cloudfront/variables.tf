variable "bucket_name" {
    description = "The S3 Bucket name."
    type        = string
}

variable "s3_bucket_domain_region_name" {
    description = "The S3 Bucket domain region name."
    type        = string
}

variable "index_page" {
    description = "The index file."
    default     = "index.html"
}
variable "acm_ceritificate_name_arn" {
    description = "The ARN of ACM certificate."
    type        = string
}