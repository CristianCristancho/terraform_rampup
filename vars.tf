variable "aws_region" {
    description = "EC2 Region for the VPC"
    default = "us-east-1"
}

variable "public_subnets_cidr" {
    description = "CIDR for the Public Subnet"
    default = ["172.23.6.0/24", "172.23.8.0/24"]
}

variable "jenkins_subnet_cidr" {
    description = "CIDR for the Jenkins Subnet"
    default = ["172.23.7.0/24"]
}

variable "private_subnet_cidr" {
    description = "CIDR for the Private Subnet"
    default = ["172.23.9.0/24"]
}

variable "avalaible_zone" {
    description = "Availability Zones to use in vpc"
    default = ["us-east-1c", "us-east-1d"]
}

variable "tags" {
    description = "Tags ccristancho"
    default = {
        Name = "ccristancho",
        created_by = "CristianC",
        project_name = "RampUpCC"
        start = "start",
        stop = "stop"
    }
}
