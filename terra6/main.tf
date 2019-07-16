terraform {
    backend "s3" {
        bucket = "terraform-learn-user14"
        key = "user14/terraform.tfstate"
        region = "ap-northeast-2"
    }
}

provider "aws" {
    region="ap-northeast-2"
}

locals {
    vm_name="${join("-",list(terraform.workspace,"vm"))}"
}

resource "aws_instance" "pshahvm1" {
    tags = {
        Name = "${local.vm_name}"
    }
    ami = "ami-095ca789e0549777d"
    instance_type = "t2.micro"
    key_name="user14_terraform_northeast2_seoul"
    security_groups=["default"]
    provisioner "remote-exec" {
        inline = ["touch test.dat"]
        connection {
            host = "${aws_instance.pshahvm1.public_ip}"
            type = "ssh"
            user = "ubuntu"
            private_key = "${file("/home/ec2-user/environment/user14_terraform_northeast2_seoul.pem")}"
        }
    }
}