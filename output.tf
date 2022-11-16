output "public_subnet_id" {
  value = module.aws_vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.aws_vpc.private_subnet_id
}
