
#
# security groups
#

resource "aws_security_group" "ec2_public" {
  name        = "ec2-public"
  description = "Allow SSH to public server and egress"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port         = 22
    to_port           = 22
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
  }

  egress {
    from_port         = 0
    to_port           = 0
    protocol          = "-1"
    cidr_blocks       = ["0.0.0.0/0"]
  }
}

#
# security rules
#

# resource "aws_security_group_rule" "allow_ssh" {
#   type              = "ingress"
#   description       = "SSH ingress"
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
#   cidr_blocks       = ["0.0.0.0/0"]
#   security_group_id = aws_security_group.ec2_public.id
# }
#
# resource "aws_security_group_rule" "allow_egress" {
#   type              = "egress"
#   description       = "allow egress"
#   from_port         = 0
#   to_port           = 0
#   protocol          = "-1"
#   cidr_blocks       = ["0.0.0.0/0"]
#   security_group_id = aws_security_group.ec2_public.id
# }

# resource "aws_security_group_rule" "allow_https" {
#   type              = "ingress"
#   description       = "HTTPS ingress"
#   from_port         = 443
#   to_port           = 443
#   protocol          = "tcp"
#   cidr_blocks       = ["0.0.0.0/0"]
#   security_group_id =
# }

# resource "aws_security_group_rule" "allow_all" {
#   type              = "ingress"
#   description       = "allow all"
#   from_port         = 0
#   to_port           = 0
#   protocol          = "-1"
#   cidr_blocks       = ["0.0.0.0/0"]
#   security_group_id =
# }