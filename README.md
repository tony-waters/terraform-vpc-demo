# terraform-vpc-demo

## objectives

- Create a VPC
- deploy a public and private server
- access the public server using ssh
- access the private server from the public server using ssh

## ingredients

- a VPC with a CIDR of 10.0.0.0/16
- subnets in the range 10.0.X.0/24
- aws internet gateway with associated route table and security group
- nat gateway for internet access from private subnet

## instructions

- run terraform init, plan, and apply
- run "test.sh" to log on to the Public ec2
- from the public ec2 ssh onto the private ec2 using the command output by the test.sh script
