output "front_ips" {
    value = "${aws_instance.front_east1.*.public_ip}"
}

output "back_ips" {
     value = "${aws_instance.back_east2.*.public_ip}"
}
