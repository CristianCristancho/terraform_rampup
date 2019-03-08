provider "aws" {
  region = "${var.aws_region}"
}

module "Inst" {
  source = "./Inst"
  jenkins_subnet = "${module.Net.jenkins_subnet}"
  private_subnet = "${module.Net.private_subnet}"
  public_subnet = "${module.Net.public_subnet}"
  aws_region = "${var.aws_region}"
  tags = "${var.tags}"
}

module "Net" {
  source = "./Net"
  public_subnets_cidr = "${var.public_subnets_cidr}"
  private_subnet_cidr = "${var.private_subnet_cidr}"
  jenkins_subnet_cidr = "${var.jenkins_subnet_cidr}"
  avalaible_zones = "${var.avalaible_zone}"
  aws_region = "${var.aws_region}"
  tags = "${var.tags}"
}
