provider "aws" {
    region = "ap-northeast-1"
}

provider "aws" {
    alias = "aws1"
    region = "ap-northeast-1"
}


provider "aws" {
    alias = "aws2"
    region = "ap-northeast-2"
}



locals {
    default_front_name="${join("-", list(var.env-name,"frontend"))}"
    default_back_name="${join("-", list(var.env-name,"backend"))}"
}

resource "aws_instance" "east1_fe" {
    count=2
    tags ={
        Name = "${local.default_front_name}"
        User = "user14"
    }
    depends_on = ["aws_instance.east1_be"] 
    availability_zone = "${data.aws_availability_zones.aws1_zones.names[count.index]}"
    #ami = "${var.aws1_ami}"
    provider = "aws.aws1"
    ami = "${var.amis[data.aws_region.region1.name]}"
    instance_type = "t2.micro"
}

resource "aws_instance" "east1_be" {
    count=2
    tags= {
        Name = "${local.default_back_name}"
        User = "user14"
    }
    availability_zone = "${data.aws_availability_zones.aws1_zones.names[count.index]}"
    #ami = "${var.aws1_ami}"
    ami = "${var.amis[data.aws_region.region1.name]}"
    provider="aws.aws1"
    instance_type = "t2.micro"
}

resource "aws_instance" "east2_fe" {
    count = "${var.multi-region-deployment ? 1:0}"
    tags ={
        Name = "${local.default_front_name}"
        User = "user14"
    }
    depends_on = ["aws_instance.east2_be"] 
    availability_zone = "${data.aws_availability_zones.aws2_zones.names[count.index]}"
    #ami = "${var.aws2_ami}"
    provider = "aws.aws2"
    ami = "${var.amis[data.aws_region.region2.name]}"
    instance_type = "t3.micro"
}

resource "aws_instance" "east2_be" {
    count = "${var.multi-region-deployment ? 1:0}"
    tags ={
        Name = "${local.default_back_name}"
        User = "user14"
    }
    availability_zone = "${data.aws_availability_zones.aws2_zones.names[count.index]}"
    #ami = "${var.aws2_ami}"
    provider="aws.aws2"
    ami = "${var.amis[data.aws_region.region2.name]}"
    instance_type = "t3.micro"
}