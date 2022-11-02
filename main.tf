module "vpc" {
  source = "./modules"

  env_code     = module.env_code
  vpc_id = module.aws_vpc.vpc_id.id
  aws_vpc    = module.aws_vpc.aws_vpc.id
  private_subnet_id = module.aws_wpc.private_subnet_id.id
  public_subnet_id  = module.aws_wpc.public_subnet_id.id
}
