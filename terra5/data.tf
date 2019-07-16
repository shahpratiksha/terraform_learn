data "aws_region" "region1" {
    provider = "aws.aws1"
}

data "aws_region" "region2" {
    provider = "aws.aws2"
}
data "aws_availability_zones" "aws1_zones" {}
data "aws_availability_zones" "aws2_zones" {
    provider = "aws.aws2"
}