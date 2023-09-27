output "s3_bucket_name" {
    description = "The S3 bucket name"
    value       = module.s3.s3_bucket_name
}

output "s3_bucket_website_endpoint" {
    description = "The S3 Hotsted website domain"
    value       = module.s3.s3_bucket_website_endpoint
}

output "s3_bucket_domain_region_name" {
    description = "The S3 Bucket domain region name."
    value       = module.s3.s3_bucket_domain_region_name
}

output "website_domain_name" {
    description = "The domain of website."
    value       = module.route53.website_domain_name
}