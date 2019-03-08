resource "aws_security_group" "jenkins" {
    name = "SG_Jenkins"
    description = "Allow incoming HTTP connections."

    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        //cidr_blocks = ["${var.private_subnet_cidr}"]
        cidr_blocks = ["0.0.0.0/0"]
    }

    vpc_id = "${data.aws_vpc.Vpc_Cristian_Santiago.id}"

    tags {
        Name = "cccristancho_SecGroup_Jenkins"
        created_by = "${var.tags["created_by"]}"
        project_name = "${var.tags["project_name"]}"
        start = "${var.tags["start"]}"
        stop = "${var.tags["stop"]}"  
    }
}

resource "aws_security_group" "FrontEnd" {
    name = "SG_FrontEnd"
    description = "Allow incoming HTTP connections from Jenkins subnet"

    ingress {
        from_port = 3030
        to_port = 3030
        protocol = "tcp"
        cidr_blocks = ["${var.jenkins_subnet_cidr}"]
    }
    
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["${var.jenkins_subnet_cidr}"]
    }
    
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        //cidr_blocks = ["${var.private_subnet_cidr}"]
        cidr_blocks = ["0.0.0.0/0"]
    }

    vpc_id = "${data.aws_vpc.Vpc_Cristian_Santiago.id}"

    tags {
        Name = "cccristancho_SecGroup_FrontEnd"
        created_by = "${var.tags["created_by"]}"
        project_name = "${var.tags["project_name"]}"
        start = "${var.tags["start"]}"
        stop = "${var.tags["stop"]}"  
    }
}

resource "aws_security_group" "BackEnd" {
    name = "SG_BackEnd"
    description = "Allow incoming HTTP connections from Jenkins subnet"

    ingress {
        from_port = 3000
        to_port = 3000
        protocol = "tcp"
        cidr_blocks = ["${var.jenkins_subnet_cidr}"]
    }
    
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["${var.jenkins_subnet_cidr}"]
    }
    
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        //cidr_blocks = ["${var.private_subnet_cidr}"]
        cidr_blocks = ["0.0.0.0/0"]
    }

    vpc_id = "${data.aws_vpc.Vpc_Cristian_Santiago.id}"

    tags {
        Name = "cccristancho_SecGroup_BackEnd"
        created_by = "${var.tags["created_by"]}"
        project_name = "${var.tags["project_name"]}"
        start = "${var.tags["start"]}"
        stop = "${var.tags["stop"]}"  
    }
}