variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "my_vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "my_vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "my_subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "my_availability_zone" {
  description = "Availability Zone for the subnet"
  type        = string
}

variable "my_subnet_name" {
  description = "Name of the subnet"
  type        = string
}
variable "my_igw_name" {
  description = "Name of the Internet Gateway"
  type        = string
}
variable "my_route_table_name" {
  description = "Name of the route table"
  type        = string
}
variable "my_security_group_name" {
  description = "Name of the security group"
  type        = string
}
variable "my_ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "my_instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "my_key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "my_instance_name" {
  description = "EC2 instance name"
  type        = string
}