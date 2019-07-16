variable "tags" {
    type = "map"
}

variable "region" {
    default = "ap-northeast-1"
}

variable "total_instances" {
    default=1
}

variable "cmds" {
    type = "list"
    default = ["sudo yum -y install python"]
}

