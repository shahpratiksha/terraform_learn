data "aws_region" "region_data" {}

data "aws_availability_zones" "zones" {}


data "aws_ami" "latest_ubuntu" {
    most_recent = true

    owners = ["099720109477"] #canonical

    filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-*amd*"]
    }

    filter {
        name = "virtualization-type"
        values =["hvm"]
    }
}