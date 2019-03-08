resource "aws_vpc" "vpc_cs" {
  cidr_block = "${var.vpc_cs}"
  tags {
    Name = "vpc_Santi_Cris"
    create_by = "CristianC"
    project_name = "ccristancho_RampUp"
    start = "start"
    stop = "stop"
  }
}
