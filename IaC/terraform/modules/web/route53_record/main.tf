resource "aws_route53_record" "route53_record" {
  zone_id = var.route53_zone_id
  name    = var.domain_website 
  type    = "A"
  ttl     = "300"
  records = ["${var.cloud_front_domain_name}"]
}
