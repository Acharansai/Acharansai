terraform {
  backend "s3" {
    bucket = "terraform-state-charan"
    key    = "ec2/terraform.tfstate"
    region = "us-east-1"
  }
}
