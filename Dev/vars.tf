variable "aws_region" {
    description = "EC2 Region for the VPC"
    default = "us-east-1"
}

variable "vpc_cs" {
    description = "CIDR for the whole VPC"
    default = "173.23.0.0/16"
}

variable "public_subnets_cidr" {
    description = "CIDR for the Public Subnet"
    default = ["173.23.6.0/24", "173.23.7.0/24"]
}

variable "private_subnet_cidr" {
    description = "CIDR for the Private Subnet"
    default = ["173.23.8.0/24"]
}

variable "avalaible_zone" {
    description = "Avalaible zone to use in vpc"
    default = ["us-east-1c", "us-east-1d"]
}
