provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami                    = "ami-12345678"  # Hardcoded AMI (bad practice)
  instance_type          = "t2.micro"      # Deprecated instance type
  associate_public_ip_address = true       # Security risk in production
  security_groups        = ["default"]     # Using default security group (bad practice)

  tags = {
    Name = "ExampleInstance"
  }
}