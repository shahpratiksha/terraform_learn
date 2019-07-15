provider "aws" {
    region = "ap-northeast-1"
}

provider "aws" {
    alias = "us-second-2"
    region = "ap-northeast-2"
}

resource "aws_instance" "norteast1vm" {
    ami = "ami-0c3fd0f5d33134a76"
    instance_type = "t2.micro"
}

resource "aws_instance" "norteast2vm" {
    provider = "aws.us-second-2"
    ami = "ami-095ca789e0549777d"
    instance_type = "t2.micro"
}

