output "s3_bucket_name" {
    description = "The S3 bucket name"
    value       = aws_s3_bucket.website.id
}

output "s3_bucket_website_endpoint" {
    description = "The S3 Hotsted website domain"
    value       = aws_s3_bucket.website.website_endpoint
}

output "s3_bucket_domain_region_name" {
    description = "The S3 Bucket domain region name."
    value       = aws_s3_bucket.website.bucket_regional_domain_name
}