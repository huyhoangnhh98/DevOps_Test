output "cloud_front_domain"{
    description = "The domain of cloud front."
    value       = aws_cloudfront_distribution.website.domain_name
}
