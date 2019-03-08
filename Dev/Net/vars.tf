variable "aws_region" {
    description = "EC2 Region for the VPC"
}

variable "vpc_cs" {
    description = "CIDR for the whole VPC"
}

variable "public_subnets_cidr" {
    description = "CIDR for the Public Subnet"
    type = "list"
}

variable "private_subnet_cidr" {
    description = "CIDR for the Private Subnet"
    type = "list"
}

variable "avalaible_zones" {
    description = "Avalaible zone to use in vpc"
    type = "list"
}

variable "tag_create_by" {
    description = "tag create_by"
        default = "CristianC"
}

variable "tag_project_name" {
    description = "tag project_name"
        default = "ccristancho_RampUp"
}

variable "tag_start" {
    description = "tag start"
    default = "start"
}

variable "tag_stop" {
    description = "tag stop"
    default = "stop"
}