#
# ec2 in Public subnet 0
#

/*
  create an ec2 in the public subnet and see if we can ssh into in
 */

resource "aws_instance" "public_ec2" {
  ami = var.ec2_ami
  instance_type = var.ec2_instance_type
  subnet_id = aws_subnet.public[0].id
  key_name = var.ec2_key_pair_name
  security_groups = [aws_security_group.ec2_public.id]
  associate_public_ip_address = true

  tags = {
    Name = "EC2 in Public subnet 0"
  }
}

resource "aws_instance" "private_ec2" {
  ami = var.ec2_ami
  instance_type = var.ec2_instance_type
  subnet_id = aws_subnet.private[0].id
  key_name = var.ec2_key_pair_name
  # security_groups = [aws_security_group.ec2_private.id]
  associate_public_ip_address = false

  tags = {
    Name = "EC2 in Private subnet 0"
  }
}