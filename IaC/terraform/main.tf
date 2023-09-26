module ecr {
    source = "./Iac/terraform/modules/api/ecr"
    ecr_repository_name = local.ecr_repository_name
    
    depends_on = [
    module.ecr
    ]
}