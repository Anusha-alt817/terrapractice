variable "vpc_id" {
  description = "VPC ID where the route table will be created"
  type        = string
}

variable "igw_id" {
  description = "Internet Gateway ID for the default route"
  type        = string
}

variable "route_table_name" {
  description = "Name of the route table"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to associate with the route table"
  type        = string
}