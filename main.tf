module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = var.my_vpc_cidr
  vpc_name = var.my_vpc_name
}
module "subnet" {
  source = "./modules/subnet"

  vpc_id            = module.vpc.vpc_id
  subnet_cidr       = var.my_subnet_cidr
  availability_zone = var.my_availability_zone
  subnet_name       = var.my_subnet_name
}
module "igw" {
  source = "./modules/igw"

  vpc_id   = module.vpc.vpc_id
  igw_name = var.my_igw_name
}
module "route_table" {
  source = "./modules/route-table"

  vpc_id           = module.vpc.vpc_id
  igw_id           = module.igw.igw_id
  route_table_name = var.my_route_table_name
  subnet_id        = module.subnet.subnet_id
}
module "security_group" {
  source = "./modules/security-group"

  vpc_id              = module.vpc.vpc_id
  security_group_name = var.my_security_group_name
}
module "ec2" {
  source = "./modules/ec2"

  ami_id            = var.my_ami_id
  instance_type     = var.my_instance_type
  subnet_id         = module.subnet.subnet_id
  security_group_id = module.security_group.security_group_id
  key_name          = var.my_key_name
  instance_name     = var.my_instance_name
}