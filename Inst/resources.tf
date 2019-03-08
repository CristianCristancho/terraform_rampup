resource "aws_instance" "jenk_master" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  user_data = "${file("${var.bootstrap_path}")}"
  //vpc_security_group_ids = ["${var.SGJenk}"]
  subnet_id = "${var.jenkins_subnet[0]}"
  associate_public_ip_address = true
  key_name = "CristianCristancho"

  tags {
    Name = "cccristancho-Jenk_master"
    created_by = "${var.tags["created_by"]}"
    project_name = "${var.tags["project_name"]}"
    start = "${var.tags["start"]}"
    stop = "${var.tags["stop"]}"  
  }
}
resource "aws_instance" "master" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  user_data = "${file("${var.bootstrap_path}")}"
  //vpc_security_group_ids = ["${var.SGFront}"]
  subnet_id = "${var.public_subnet[0]}"
  key_name = "CristianCristancho"

  tags {
    Name = "cccristancho-Front_Master"
    created_by = "${var.tags["created_by"]}"
    project_name = "${var.tags["project_name"]}"
    start = "${var.tags["start"]}"
    stop = "${var.tags["stop"]}"  
  }
}

resource "aws_instance" "worker1" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  user_data = "${file("${var.bootstrap_path}")}"
  //vpc_security_group_ids = ["${var.SGFront}"]
  subnet_id = "${var.public_subnet[0]}"
  key_name = "CristianCristancho"

  tags {
    Name = "cccristancho-Front_Worker1"
    created_by = "${var.tags["created_by"]}"
    project_name = "${var.tags["project_name"]}"
    start = "${var.tags["start"]}"
    stop = "${var.tags["stop"]}"  
  }
}

resource "aws_instance" "worker2" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  user_data = "${file("${var.bootstrap_path}")}"
  //vpc_security_group_ids = ["${var.SGFront}"]
  subnet_id = "${var.public_subnet[0]}"
  key_name = "CristianCristancho"

  tags {
    Name = "cccristancho-Front_Worker2"
    created_by = "${var.tags["created_by"]}"
    project_name = "${var.tags["project_name"]}"
    start = "${var.tags["start"]}"
    stop = "${var.tags["stop"]}"  
  }
}