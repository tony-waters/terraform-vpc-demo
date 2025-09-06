
output "public_ec2_ip" {
  description = "Public IP for Public EC2 instance"
  value = aws_instance.public_ec2.public_ip
}