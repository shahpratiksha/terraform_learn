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
    default = ["sudo apt-get -y install python"]
}

