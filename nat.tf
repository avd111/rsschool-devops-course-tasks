resource "aws_instance" "nat" {
  ami               = var.nat_ami
  instance_type     = "t3.large"
  subnet_id         = module.public_subnets.public_subnet_ids[0]
  source_dest_check = false

  tags = {
    Name = "NAT Instance"
  }
}

