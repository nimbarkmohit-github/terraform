# Terraform-Docker-Jenkins

@maintaner : Mohit Nimbark nimbarkmohit@gmail.com
---------------------------------------------------

1. git clone https://github.com/nimbarkmohit-github/terraform.git
2. terraform init
3. terraform plan -out jenkins-config-plan.tfplan
4. terraform apply jenkins-config-plan.tfplan
5. docker ps
6. terraform show

--------------------------------------------------
You can destroy all your resources using below command

6. terraform destroy
