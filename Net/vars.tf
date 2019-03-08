variable "aws_region" {
    description = "EC2 Region for the VPC"
}

variable "public_subnets_cidr" {
    description = "CIDR for the Public Subnet"
    type = "list"
}

variable "private_subnet_cidr" {
    description = "CIDR for the Private Subnet"
    type = "list"
}

variable "jenkins_subnet_cidr" {
  description = "CIDR for the Jenkins Subnet"
  type = "list"
}

variable "avalaible_zones" {
    description = "Availability Zones to use in vpc"
    type = "list"
}

variable "tags" {
    description = "tags ccristancho"
    type = "map"
}