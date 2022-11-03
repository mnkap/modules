module "aws_vpc" {
  source = "./modules"
  aws_vpc = module.aws_vpc.aws_vpc
  private_subnet_id = module.aws_vpc.private_subnet_id
  public_subnet_id  = module.aws_vpc.public_subnet_id
}
