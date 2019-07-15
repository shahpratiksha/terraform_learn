output "public_ip_addresses" {
    value = "${aws_instance.frontend.*.public_ip}"
}