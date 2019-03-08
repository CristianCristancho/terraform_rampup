resource "aws_subnet" "public-subnet" {
    vpc_id = "${aws_vpc.vpc_cs.id}"
    count = "${length(var.public_subnets_cidr)}"
    cidr_block = "${element(var.public_subnets_cidr, count.index)}"
    availability_zone = "${element(var.avalaible_zones, count.index)}"
    cidr_block = "${element(var.public_subnets_cidr, count.index)}"
    tags {
        Name = "cccristancho_SubNet_Public_ + ${length(var.public_subnets_cidr)}"
        create_by = "${var.tag_create_by}"
        project_name = "${var.tag_project_name}"
        start = "${var.tag_start}"
        stop = "${var.tag_stop}"
        
    }
}

resource "aws_subnet" "private-subnet" {
    vpc_id = "${aws_vpc.vpc_cs.id}"
    count = "${length(var.private_subnet_cidr)}"
    cidr_block = "${element(var.private_subnet_cidr, count.index)}"
    availability_zone = "${element(var.avalaible_zones, count.index)}"
    cidr_block = "${element(var.private_subnet_cidr, count.index)}"
    tags {
        Name = "cccristancho_SubNet_Private_ + ${length(var.private_subnet_cidr)}"
        create_by = "${var.tag_create_by}"
        project_name = "${var.tag_project_name}"
        start = "${var.tag_start}"
        stop = "${var.tag_stop}"
        
    }
}