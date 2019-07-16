terraform {
    backend "s3" {
        bucket = "user14-lab"
        key = "user14/terraform.tfstate"
        region = "us-west-2"
    }
}

#unused default
provider "aws" {
    region = "us-west-2"
}

provider "aws" {
    alias = "east1"
    region = "ap-northeast-1"
}

provider "aws" {
    alias = "east2"
    region = "ap-northeast-2"
}

data "aws_region" "region1" {
    provider = "aws.east1"
}

data "aws_region" "region2" {
    provider = "aws.east2"
}

data "aws_availability_zones" "east1_zones" {
    provider = "aws.east1"
}
data "aws_availability_zones" "east2_zones" {
    provider = "aws.east2"
}

resource "aws_instance" "front_east1" {
    count=2
    tags = {
        Name = "${join("-",list("frontvm", terraform.workspace))}"
        User = "user14"
        Time = "${timestamp()}"
    }
    provider = "aws.east1"
    availability_zone = "${data.aws_availability_zones.east1_zones.names[1]}"
    ami = "${var.east1_ami}"
    instance_type = "t3.micro"
    lifecycle {
        create_before_destroy = true
    }
    key_name="user14_lab"
    provisioner "remote-exec" {
        inline = ["sudo yum install nginx "]
        connection {
            host = "${self.public_ip}"
            type = "ssh"
            user = "ec2-user"
            private_key = "${file("/home/ec2-user/environment/user14_lab")}"
        }
    }
}

resource "aws_instance" "back_east2" {
    count=2
    tags = {
        Name = "${join("-",list(terraform.workspace, "backvm"))}"
        User = "user14"
        Time = "${timestamp()}"
    }
    provider = "aws.east2"
    availability_zone = "${data.aws_availability_zones.east2_zones.names[count.index]}"
    ami = "${var.east2_ami}"
    instance_type = "t3.micro"
    lifecycle {
        create_before_destroy = true
    }
    
    key_name="user14_lab"
    provisioner "remote-exec" {
        inline = ["sudo yum install -y sqlite-devel"]
        connection {
            host = "${self.public_ip}"
            type = "ssh"
            user = "ec2-user"
            private_key = "${file("/home/ec2-user/environment/user14_lab")}"
        }
    }
}