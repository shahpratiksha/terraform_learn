module "frontend" {
    source = "./aws_instances"
    tags = {Name ="coolinstance", environ="test", role="frontend"}
    cmds=["sudo yum -y install nginx"]
}

module "backend" {
    source = "./aws_instances"
    tags = {Name="hotinstance", environ="test", role="backend"}
    region="ap-northeast-2"
    cmds=["sudo yum -y install sqlite-revel"]
}

output "frontend_ips" {
    value = "${module.frontend.ips}"
}

output "backend_ips" {
    value = "${module.backend.ips}"
}