resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "VPC_Virginia"
    name = "prueba"
    env  = "Dev"
  }
}

resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.ohio_cidr
  tags = {
    Name = "VPC_Ohio"
    name = "prueba"
    env  = "Dev"
  }
  provider = aws.ohio
}

variable "virginia_cidr" {
  default = "10.10.0.0/16"
}

variable "ohio_cidr" {
  default = "10.20.0.0/16"
}