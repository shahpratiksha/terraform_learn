output "east1_front_ips" {
    value = "${aws_instance.east1_fe.*.public_ip}"
}

output "east1_back_ips" {
    value = "${aws_instance.east1_be.*.public_ip}"
}

output "east2_front_ips" {
    value = "${aws_instance.east2_fe.*.public_ip}"
}

output "east2_back_ips" {
    value = "${aws_instance.east2_be.*.public_ip}"
}

output "data_az_aws1" {
    value = "${data.aws_availability_zones.aws1_zones.*.names}"
}

output "data_az_aws2" {
    value = "${data.aws_availability_zones.aws2_zones.*.names}"
}