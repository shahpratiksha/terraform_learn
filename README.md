Notes:

Terraform merges all scripts in the same folder
terraform Provider are basically plugins

Terraform init 
-> initializes provider 

Terraform plan 
does it in memory -> its discarded 

Terraform apply
will regenerate plan if no file is specified 

Terraform destroy
-> destroys state based on the tf_state fike

Terraform validate
-> syntax check the script 

.tfstate file records state 


You can have multiple providers in the same main.tf 
Ie provider “aws” and provider “gcp”


var-file-stuff.auto.tfvars will automatically get picked up 
Or use “terraform.tfvars”
Otherwise use:
terraform apply --var-file var-file-stuff.tfvar --auto-approve



${} for interpolation


We can only get stuff out of variable or data “provider” See terra5 for example of how to get aws_region name 


