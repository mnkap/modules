module "aws_vpc" {
  source            = "./modules"
  aws_vpc           = var.aws_vpc
  private_subnet_id = var.private_subnet_id
  public_subnet_id  = var.public_subnet_id
}
