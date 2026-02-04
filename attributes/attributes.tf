provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "lb" {
    domain  = "vpc"
}

resource "aws_instance" "my_first_vm" {
  ami           = "ami-0532be01f26a3de55" # ID de Amazon Linux 2023
  instance_type = "t2.micro"
}