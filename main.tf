module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source    = "./modules/ec2"
  subnet_id = module.vpc.public_subnet_id
}

module "rds" {
  source    = "./modules/rds"
  subnet_id = module.vpc.private_subnet_id
}

module "security_group" {
  source                = "./modules/security_group"
  ec2_security_group_id = module.ec2.ec2_instance_id
  rds_security_group_id = module.rds.rds_instance_id
}
