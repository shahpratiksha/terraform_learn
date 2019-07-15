Notes:

Terraform merges all scripts in the same folder
terraform Provider are basically plugins

```Terraform init ```
-> initializes provider 

```Terraform plan ```
does it in memory -> its discarded 

```Terraform apply```
will regenerate plan if no file is specified 

```Terraform destroy```
-> destroys state based on the tf_state fike

```Terraform validate```
-> syntax check the script 

```.tfstate``` file records state 


You can have multiple providers in the same main.tf 
Ie provider “aws” and provider “gcp”


var-file-stuff.auto.tfvars will automatically get picked up 
Or use ```“terraform.tfvars”```
Otherwise use:
```terraform apply --var-file var-file-stuff.tfvar --auto-approve```



${} for interpolation


We can only get stuff out of variable or data “provider” See terra5 for example of how to get aws_region name 

```function chop-first-column { awk '{for (i=2; i<NF; i++) printf $i " "; print $NF}' ; }```

```
user14:~/environment (master) $ history | chop-first-column | sort | uniq | grep -v history | grep -v git
aws configure
aws ec2 describe-regions
curl -O https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
sudo ln -s /usr/local/bin/pip /bin
sudo pip install --upgrade awscli
sudo pip install --upgrade pip
sudo unzip terraform_0.11.11_linux_amd64.zip -d /usr/bin/
terraform
terraform apply
terraform apply --auto-approve
terraform apply --var-file var-file-stuff.tfvar --auto-approve
terraform destroy
terraform destroy --auto-approve
terraform destroy --var-file var-file-stuff.tfvar --auto-approve
terraform help
terraform init
terraform plan
terraform show
terraform show --auto-approve
terraform validate
```

To Setup Terraform on Cloud9 

https://kiddcorp.signin.aws.amazon.com/console

```
sudo yum -y install jq git
sudo pip install --upgrade pip
sudo ln -s /usr/local/bin/pip /bin
sudo pip install --upgrade awscli

curl -O https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
sudo unzip terraform_0.11.11_linux_amd64.zip -d /usr/bin/
```

