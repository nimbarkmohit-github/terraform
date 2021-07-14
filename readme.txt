terraform init
terraform plan -out jenkins-config-plan.tfplan
terraform apply jenkins-config-plan.tfplan
docker ps
terraform show