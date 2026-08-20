output "vpc_id" {
  description = "ID of the VPC created by the VPC module"
  value       = module.vpc.vpc_id
}