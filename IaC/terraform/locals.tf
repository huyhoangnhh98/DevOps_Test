locals {
    component_app_name = "example-app-${var.environment}"

    # ECR
    ecr_repository_name = format(local.component_app_name, "ecr-name")
}