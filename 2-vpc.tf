#
# vpc
#

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name = "Main VPC"
  }
}

#
# subnets
#

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.main.id

  count =length(var.public_subnet_cidrs)
  cidr_block = element(var.public_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name = "Public Subnet ${count.index +1}"
  }
}

resource "aws_subnet" "private" {
  vpc_id = aws_vpc.main.id

  count =length(var.private_subnet_cidrs)
  cidr_block = element(var.private_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name = "Private Subnet ${count.index +1}"
  }
}

