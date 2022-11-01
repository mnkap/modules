module "vpc" {
  source = "./modules"

  env_code     = var.env_code
  vpc_cidr     = var.aws_vpc
  private_cidr = var.private_cidr
  public_cidr  = var.public_cidr
}