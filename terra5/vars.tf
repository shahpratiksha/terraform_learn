variable "multi-region-deployment" {
    default = true
}

variable "env-name" {
    default = "tf-demo"
}

variable "aws1_ami" {
    default = "ami-0c3fd0f5d33134a76"
}

variable "aws2_ami" {
    default = "ami-095ca789e0549777d"
}

variable "amis" {
    type = "map"
    default = {
        ap-northeast-1= "ami-0c3fd0f5d33134a76"
        ap-northeast-2= "ami-095ca789e0549777d"
    }
}