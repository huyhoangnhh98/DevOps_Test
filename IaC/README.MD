### Locals file: Define name of service follow structure: <app_name>-<environment>-<service_name>

### To run tf follow command:
```bash
...
$ terraform init -var-file ./IaC/terraform/dev.tfvars
...
$ terraform plan -var-file ./IaC/terraform/dev.tfvars
...
$ terraform apply -var-file ./IaC/terraform/dev.tfvars
...
```

### This terraform source is only setup to run service on web module such as: ACM, route53, s3, cloudfront


