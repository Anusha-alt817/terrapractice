variable "vpc_id" {
  description = "VPC ID where the subnet will be created"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for the subnet"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}