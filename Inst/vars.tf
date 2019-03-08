variable "aws_region" {
  description = "EC2 Region for the VPC"
}

variable "public_subnet" {
  description = "CIDR for the Public Subnet"
  type = "list"
}

variable "private_subnet" {
  description = "CIDR for the Private Subnet"
  type = "list"
}

variable "jenkins_subnet" {
  description = "CIDR for the Jenkins Subnet"
  type = "list"
}

variable "tags" {
  description = "tags ccristancho"
  type = "map"
}

###############
###instances###
###############
variable "ami" {
  description = "Amazon Linux AMI"
  default = "ami-4fffc834"
}

variable "instance_type" {
  description = "Instance type"
  default = "t2.micro"
}

variable "bootstrap_path" {
  description = "Script to install Docker Engine"
  default = "install-docker.sh"
}