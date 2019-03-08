/*
resource "aws_nat_gateway" "NatGW" {
  allocation_id = "${data.aws_eip.eip.id}"
  subnet_id = "${aws_subnet.public-subnet.0.id}"
  depends_on = ["data.aws_eip.eip"]

  tags {
        Name = "cccristancho_NAT_Gateway"
        created_by = "${var.tags["created_by"]}"
        project_name = "${var.tags["project_name"]}"
        start = "${var.tags["start"]}"
        stop = "${var.tags["stop"]}"  
    }
}

resource "aws_internet_gateway" "IntGW" {
  vpc_id = "${data.aws_vpc.Vpc_Cristian_Santiago.id}"
  tags {
        Name = "cccristancho_Inter_Gateway"
        created_by = "${var.tags["created_by"]}"
        project_name = "${var.tags["project_name"]}"
        start = "${var.tags["start"]}"
        stop = "${var.tags["stop"]}"  
    }
}
*/