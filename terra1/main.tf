provider "aws" {
    region="ap-northeast-2"
}

resource "aws_instance" "pshahvm1" {
    ami = "ami-095ca789e0549777d"
    instance_type = "t2.micro"
}