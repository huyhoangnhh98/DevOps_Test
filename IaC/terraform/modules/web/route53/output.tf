output "website_domain_name" {
    description = "The domain of website"
    value       = aws_route53_zone.route53_zone.name
}

output "route53_zone_id" {
    description = "The domain of website"
    value       = aws_route53_zone.route53_zone.zone_id
}