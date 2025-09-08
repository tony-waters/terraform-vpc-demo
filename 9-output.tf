
output "public_ec2_ip" {
  description = "Public IP for Public EC2 instance"
  value = aws_instance.public_ec2.public_ip
}

output "private_ec2_ip" {
  description = "Private IP for Private EC2 instance"
  value = aws_instance.private_ec2.private_ip
}