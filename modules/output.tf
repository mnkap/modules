
output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}

output "aws_vpc" {
  value = aws_vpc.main.cidr_block
}
