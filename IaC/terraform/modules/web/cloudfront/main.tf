resource "aws_cloudfront_distribution" "website" {
  origin {
    origin_id   = "origin-${var.bucket_name}"
    domain_name = var.s3_bucket_domain_region_name
    custom_origin_config {
      origin_protocol_policy = "http-only"
      http_port              = "80"
      https_port             = "443"
      origin_ssl_protocols   = ["TLSv1.2"]
    }
  }

  enabled             = true
  default_root_object = var.index_page
  is_ipv6_enabled     = true

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  default_cache_behavior {
    target_origin_id = "origin-${var.bucket_name}"
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    compress         = true

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "allow-all"
    min_ttl                = 0
    default_ttl            = 300
    max_ttl                = 1200
  }

  viewer_certificate {
    acm_certificate_arn = var.acm_ceritificate_name_arn
    ssl_support_method  = "sni-only"
  }
}