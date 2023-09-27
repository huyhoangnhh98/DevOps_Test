module s3 {
    source      = "./modules/web/s3"

    bucket_name = local.bucket_name
}

module route53 {
    source         = "./modules/web/route53"

    domain_website = local.domain_website
}

module acm {
    source         = "./modules/web/acm"

    domain_website = local.domain_website
}

module cloud_front {
    source                       = "./modules/web/cloudfront"

    bucket_name                  = local.bucket_name
    s3_bucket_domain_region_name = module.cloud_front.s3_bucket_domain_region_name
    acm_ceritificate_name_arn    = module.acm.acm_certificate_arn
}

module route53_record {
    source                  = "./modules/web/route53_record"

    route53_zone_id         = module.route53.route53_zone_id
    cloud_front_domain_name = module.cloud_front.cloud_front_domain
}