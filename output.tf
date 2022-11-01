
output "public_subnet_id" {
  value = module.modules.public_subnet_id
}

output "private_subnet_id" {
  value = module.modules.private_subnet_id
}

output "aws_vpc" {
  value = module.modules.aws_vpc
}
