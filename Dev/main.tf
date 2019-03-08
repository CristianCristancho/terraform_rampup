provider "aws" {
  region = "${var.aws_region}"
}

module "Net" {
  source = "./Net"
  vpc_cs = "${var.vpc_cs}"
  public_subnets_cidr = "${var.public_subnets_cidr}"
  private_subnet_cidr = "${var.private_subnet_cidr}"
  avalaible_zones = "${var.avalaible_zone}"
  aws_region = "${var.aws_region}"
}

