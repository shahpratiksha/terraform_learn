resource "aws_instance" "instance" {
    tags = "${var.tags}"
    count = "${var.total_instances}"
    ami = "${data.aws_ami.latest_ubuntu.id}"
    key_name = "user14_lab"
    instance_type = "t2.micro"
    security_groups = ["default"]
    #TODO: This is a temporary measure since the 
    #availability_zone = "${data.aws_availability_zones.zones.names[count.index]}"
    availability_zone = "${data.aws_availability_zones.zones.names[2]}"
    provisioner "remote-exec" {
        inline="${var.cmds}"
        connection {
            host="${self.public_ip}"
            type="ssh" 
            user="ubuntu"
            private_key="${file("/home/ec2-user/environment/user14_lab.pem")}"
        }
    }
    lifecycle {
        create_before_destroy = true
    }
}