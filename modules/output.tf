output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.cidr_block
}

output "private_subnet_id" {
  value = aws_subnet.private.cidr_block
}

output "aws_vpc" {
  value = aws_vpc.main.cidr_block
}
