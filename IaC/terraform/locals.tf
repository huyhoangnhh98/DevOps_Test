locals {
    component_app_name = "example-app-${var.environment}"

    # ECR
    ecr_repository_name = format(local.component_app_name, "ecr-name")

    # S3
    bucket_name = format(local.component_app_name, "web_example")

    # Route53
    domain_website = var.domain_website
}