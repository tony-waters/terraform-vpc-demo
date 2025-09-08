
variable "region" {
  type = string
  description = "AWS Region"
  default = "eu-west-2"
}

variable "azs" {
 type        = list(string)
 description = "Availability Zones"
 default     = ["eu-west-2a"]
  # default     = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}

variable "cidr_block" {
  type = string
  description = "CIDR block for VPN"
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
 type        = list(string)
 description = "Public Subnet CIDR values"
 default     = ["10.0.1.0/24"]
  # default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidrs" {
 type        = list(string)
 description = "Private Subnet CIDR values"
 default     = ["10.0.4.0/24"]
  # default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "ec2_ami" {
  type = string
  description = "AMI to use for EC2 instances"
  default = "ami-0cfb394ad3c3ac699"
}

variable "ec2_instance_type" {
  type = string
  description = "Instance Type to use for EC2 instances"
  default = "t3.micro"
}

variable "ec2_key_pair_name" {
  type = string
  description = "AWS Key Pair to use with EC2"
  default = "ec2_ssh"
}