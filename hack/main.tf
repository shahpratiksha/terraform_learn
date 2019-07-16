module "user14_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.7.0"

  name = "complete-example"

  cidr = "10.10.0.0/16"

  azs             = ["ap-northeast-1b", "ap-northeast-1c"]
  public_subnets  = ["10.10.1.0/24", "10.10.2.0/24"]
  private_subnets = ["10.10.3.0/24", "10.10.4.0/24"]

  enable_nat_gateway = true

  tags = {
    Owner       = "user14"
    Environment = "terraform.workspace"
    Name        = "user_14 terraform vpc"
  }
}


provider "aws" {
    region = "ap-northeast-1"
}

