provider "aws" {
    region = "ap-northeast-2"
}

resource "aws_instance" "frontend" {
    ami = "ami-095ca789e0549777d"
    instance_type = "t2.micro"
    depends_on = ["aws_instance.backend"]
    lifecycle {
        create_before_destroy = true
    }
}

resource "aws_instance" "backend" {
    count = 2
    ami = "ami-095ca789e0549777d"
    instance_type = "t2.micro"
    timeouts {
        create = "60m"
        delete = "2h"
    }
}