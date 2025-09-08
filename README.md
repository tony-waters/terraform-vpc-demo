# terraform-vpc-demo

## themes

- create a AWS VPC with public and private networks (subnets)
- demonstrate basic connectivity/routing, specifically:
  - ssh into a server on the public network
  - from there ssh into a private network server
  - use servers to access the internet

## objectives

- Create a VPC
- deploy a public and private server
- access the public server using ssh
- access the private server from the public server using ssh
- servers can run 'yum update'

## ingredients

- a VPC with a CIDR of 10.0.0.0/16
- subnets in the range 10.0.X.0/24
- aws internet gateway with associated route table and security group
- nat gateway for internet access from private subnet with associated route table and security group

## instructions

- run terraform init, plan, and apply
- run "test.sh" to log on to the Public ec2
- run 'sudo yum update' to confirm internet access
- from the public ec2 ssh onto the private ec2 using the command output by the test.sh script
- run 'sudo yum update' to confirm internet access
