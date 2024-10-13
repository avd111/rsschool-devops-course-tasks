resource "aws_instance" "bastion" {
  ami             = var.bastion_ami
  instance_type   = "t3.large"
  subnet_id       = module.public_subnets.public_subnet_ids[0]
  security_groups = [aws_security_group.public_sg.id]

  tags = {
    Name = "Bastion Host"
  }
}

