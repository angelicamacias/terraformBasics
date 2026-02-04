provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "lb" {
    domain  = "vpc"
}

output "public_ip" {
  value = aws_eip.lb.public_ip
}

output "service_url" {
  value = "https://${aws_eip.lb.public_ip}:8080"
}

output "instance_connection_details" {
  value = {
    ip  = aws_eip.lb.public_ip
    url = "https://${aws_eip.lb.public_ip}:8080"
  }
}