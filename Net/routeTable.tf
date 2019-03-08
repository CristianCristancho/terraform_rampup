resource "aws_route_table" "Nat_RouteTable" {
  vpc_id = "${data.aws_vpc.Vpc_Cristian_Santiago.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${data.aws_nat_gateway.NatGW.id}"
  }

  tags {
        Name = "cccristancho_NAT_RouteTable"
        created_by = "${var.tags["created_by"]}"
        project_name = "${var.tags["project_name"]}"
        start = "${var.tags["start"]}"
        stop = "${var.tags["stop"]}"  
    }
}

resource "aws_route_table_association" "FrontA_RT" {
  subnet_id      = "${aws_subnet.public-subnet.0.id}"
  route_table_id = "${aws_route_table.Nat_RouteTable.id}"
}
resource "aws_route_table_association" "FrontB_RT" {
  subnet_id      = "${aws_subnet.public-subnet.1.id}"
  route_table_id = "${aws_route_table.Nat_RouteTable.id}"
}
resource "aws_route_table_association" "Back_RT" {
  subnet_id      = "${aws_subnet.private-subnet.id}"
  route_table_id = "${aws_route_table.Nat_RouteTable.id}"
}

resource "aws_route_table" "Int_RouteTable" {
  vpc_id = "${data.aws_vpc.Vpc_Cristian_Santiago.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${data.aws_internet_gateway.IntGW.id}"
  }

  tags {
        Name = "cccristancho_INT_RouteTable"
        created_by = "${var.tags["created_by"]}"
        project_name = "${var.tags["project_name"]}"
        start = "${var.tags["start"]}"
        stop = "${var.tags["stop"]}"  
    }
}

resource "aws_route_table_association" "Jenk_RT" {
  subnet_id      = "${aws_subnet.jenkins-subnet.id}"
  route_table_id = "${aws_route_table.Int_RouteTable.id}"
}