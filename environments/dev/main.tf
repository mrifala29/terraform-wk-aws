module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr = var.vpc_cidr

  public_subnet_a_cidr  = var.public_subnet_a_cidr
  public_subnet_b_cidr  = var.public_subnet_b_cidr

  private_subnet_a_cidr = var.private_subnet_a_cidr
  private_subnet_b_cidr = var.private_subnet_b_cidr

  az_a = var.az_a
  az_b = var.az_b
}

module "ec2" {
  source = "../../modules/ec2"

  vpc_id = module.vpc.vpc_id

  public_subnet_a_id  = module.vpc.public_subnet_a_id
  private_subnet_a_id = module.vpc.private_subnet_a_id
  private_subnet_b_id = module.vpc.private_subnet_b_id

  ami_id        = var.ami_id
  web_cache_instance_type = var.web_cache_instance_type
  reverse_proxy_instance_type = var.reverse_proxy_instance_type
  redis_instance_type = var.redis_instance_type

  volume_type = var.volume_type
  web_cache_volume_size = var.web_cache_volume_size
  reverse_proxy_volume_size = var.reverse_proxy_volume_size
  redis_volume_size = var.redis_volume_size
}