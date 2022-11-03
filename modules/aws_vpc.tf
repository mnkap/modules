terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}


resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.cidr_block


  tags = {
    Name = var.env_code
  }
}


resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.cidr_block
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "${var.env_code}-public"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.cidr_block
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "${var.env_code}-private"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.cidr_block

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "${var.env_code}-public"
  }
}

resource "aws_route_table_association" "public" {

  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
