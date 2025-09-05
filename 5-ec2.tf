#
# public ec2
#

# resource "tls_private_key" "rsa" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }
#
# resource "aws_key_pair" "ssh_key" {
#   key_name   = "ssh_key"
#   public_key = tls_private_key.rsa.public_key_openssh
# }
#
# resource "local_file" "tf_key" {
#   content  = tls_private_key.rsa.private_key_pem
#   filename = "./${aws_key_pair.ssh_key.key_name}"
# }

resource "aws_instance" "public_ec2" {
  ami = var.ec2_ami
  instance_type = var.ec2_instance_type
  subnet_id = aws_subnet.public[0].id
  key_name = var.ec2_key_pair_name

  tags = {
    Name = "Public EC2"
  }
}