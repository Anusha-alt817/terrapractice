variable "vpc_id" {
  description = "VPC ID where the Internet Gateway will be attached"
  type        = string
}

variable "igw_name" {
  description = "Name of the Internet Gateway"
  type        = string
}