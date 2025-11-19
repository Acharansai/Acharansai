resource "aws_instance" "name" {
  ami           = "ami-084a7d336e816906b"
  instance_type = "t2.micro"
  tags = {
    name = "Docker"
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-state-charan"
    key    = "ec2/terraform.tfstate"
    region = "us-east-1"
  }
}
