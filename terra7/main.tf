module "frontend" {
    source = "./aws_instances"
    tags = {Name="coolinstance", environ="test", role="frontend"}
    cmds=["sudo apt-get -y install nginx"]
    total_instances=3
}

module "backend" {
    source = "./aws_instances"
    tags = {Name="hotinstance", environ="test", role="backend"}
    region="ap-northeast-2"
    total_instances=3
    cmds=["sudo apt-get -y install sqlite3"]
}

output "frontend_ips" {
    value = "${module.frontend.ips}"
}

output "backend_ips" {
    value = "${module.backend.ips}"
}