provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "lb" {
    domain  = "vpc"
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  # <resourceType>.<name>.<attribute>
  security_group_id = aws_security_group.allow_tls.id
  #interpolation syntax to reference the public_ip attribute of the aws_eip resource
  cidr_ipv4        = "${aws_eip.lb.public_ip}/32"
  from_port        = 80
  ip_protocol      = "tcp"
  to_port          = 80
}