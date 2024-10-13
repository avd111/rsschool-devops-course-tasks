resource "aws_subnet" "private_subnet_1" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet_cidrs[0]
  availability_zone = var.azs[0]
  tags = {
    Name = "${var.project_name}-private-subnet-1"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet_cidrs[1]
  availability_zone = var.azs[1]
  tags = {
    Name = "${var.project_name}-private-subnet-2"
  }
}
