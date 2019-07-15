         ___        ______     ____ _                 _  ___  
        / \ \      / / ___|   / ___| | ___  _   _  __| |/ _ \ 
       / _ \ \ /\ / /\___ \  | |   | |/ _ \| | | |/ _` | (_) |
      / ___ \ V  V /  ___) | | |___| | (_) | |_| | (_| |\__, |
     /_/   \_\_/\_/  |____/   \____|_|\___/ \__,_|\__,_|  /_/ 
 ----------------------------------------------------------------- 


Hi there! Welcome to AWS Cloud9!

To get started, create some files, play with the terminal,
or visit https://docs.aws.amazon.com/console/cloud9/ for our documentation.

Happy coding!


Terraform merges all scripts in the same folder
terraform Provider are basically plugins

Terraform init -> initializes provider 
Terraform plan does it in memory -> its discarded 
Terraform apply will regenerate plan if no file is specified 
Terraform destroy -> destroys state based on the tf_state fike
Terraform validate -> syntax check the script 

tf_state file records state 


You can have multiple providers in the same main.tf 
Ie provider “aws” and provider “gcp”




var-file-stuff.auto.tfvars will automatically get picked up 
Or use “terraform.tfvars”
Otherwise use:
terraform apply --var-file var-file-stuff.tfvar --auto-approve




 


${} interpolation


We can only get stuff out of variable or data “provider” 

