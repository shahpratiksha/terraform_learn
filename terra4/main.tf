provider "aws" {
    region = "ap-northeast-2"
}

variable "zones"{
    default = ["ap-northeast-2a", "ap-northeast-2c"]
}

resource "aws_instance" "frontend" {
    count=2
    ami = "ami-095ca789e0549777d"
    instance_type = "t3.micro"
    availability_zone = "${var.zones[count.index]}"
}

