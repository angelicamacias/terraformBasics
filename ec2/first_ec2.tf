provider "aws" {
  region = "us-east-1"
  access_key = "<accessKey>"
  secret_key = "<secretKey>"
}

resource "aws_instance" "my_first_vm" {
  ami           = "ami-0532be01f26a3de55"
  instance_type = "t2.micro"

  tags = {
    Name = "MyFirstVM"
  }
}