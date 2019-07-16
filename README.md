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
user14:~/environment/terra7 (master) $ history | chop-first-column | sort | uniq | grep -v history | grep -v git | grep -v ssh                  
aws configure
aws ec2 describe-regions
chmod 400 user14_lab
chmod 400 user14_terraform_northeast*
curl -O https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
curl -O https://releases.hashicorp.com/terraform/0.12.4/terraform_0.12.4_linux_amd64.zip
export TF_LOG_PATH=terra_log.txt
export TF_LOG="TRACE"
export TF_LOG="WARN"
for i in `seq 1 6`; do cd ../terra$i/ ;pwd; terraform destroy --auto-approve;done
sudo ln -s /usr/local/bin/pip /bin
sudo pip install --upgrade awscli
sudo pip install --upgrade pip
sudo unzip terraform_0.11.11_linux_amd64.zip -d /usr/bin/
sudo unzip terraform_0.12.4_linux_amd64.zip -d /usr/bin/
terraform apply --auto-approve
terraform apply --var-file var-file-stuff.tfvar --auto-approve
terraform destroy --auto-approve
terraform destroy --var-file var-file-stuff.tfvar --auto-approve
terraform help
terraform init
terraform plan
terraform plan -out plan.out
terraform show
terraform show --auto-approve
terraform validate
terraform version
terraform workspace delete user14
terraform workspace list
terraform workspace new user14
terraform workspace select default
terraform workspace select user14
terraform workspace show
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


We can only get stuff out of variable or data “provider” 

```
terraform {
    backend "s3" {
        bucket = "terraform-learn-user14"
        key = "user14/terraform.tfstate"
        region = "ap-northeast-2"
    }
}
```
 # file provisioner to copy file from local to target machine
Another is “remote-exec” 
“Cloud-init”
“Chef”
“Ansible” 
“Puppet”


https://registry.terraform.io/

“_” might get interpreted as a “.” On some infrastructures so try to use “-“ in the names instead   

