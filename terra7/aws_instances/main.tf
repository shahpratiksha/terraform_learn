resource "aws_instance" "instance" {
    tags = "${var.tags}"
    count = "${var.total_instances}"
    ami = "${data.aws_ami.latest_ubuntu.id}"
    key_name = "user14_lab"
    instance_type = "t2.micro"
    security_groups = ["default"]
    availability_zone = "${data.aws_availability_zones.zones.names[count.index]}"
    provisioner "remote-exec" {
        inline="${var.cmds}"
        connection {
            host="${self.public_ip}"
            type="ssh" 
            user="ubuntu"
            private_key="${file("/home/ec2-user/environment/user14_lab")}"
        }
    }
}