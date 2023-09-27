resource "aws_acm_certificate" "acm_certificate" {
  domain_name       = var.domain_website
  validation_method = "DNS"
}
