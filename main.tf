module "vpc" {
  source       = "./modules/vpc"
  vpc_cidr     = var.vpc_cidr
  project_name = var.project_name
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

module "public_subnets" {
  source              = "./modules/public_subnets"
  vpc_id              = var.vpc_id
  public_subnet_cidrs = var.public_subnet_cidrs
  azs                 = var.azs
  project_name        = var.project_name
}

module "private_subnets" {
  source               = "./modules/private_subnets"
  vpc_id               = var.vpc_id
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs
  project_name         = var.project_name
}

module "internet_gateway" {
  source       = "./modules/internet_gateway"
  vpc_id       = module.vpc.vpc_id
  project_name = var.project_name
}

module "route_tables" {
  source             = "./modules/route_tables"
  vpc_id             = module.vpc.vpc_id
  igw_id             = module.internet_gateway.igw_id
  public_subnet_ids  = module.public_subnets.public_subnet_ids
  private_subnet_ids = module.private_subnets.private_subnet_ids
  project_name       = var.project_name
}
