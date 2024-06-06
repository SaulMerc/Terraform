#Initial format for terraform#
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

locals {
  extra_tag = "ExampleappServer"
}

#Create an aws instace#
resource "aws_instance" "example" {
  ami = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    ExtraTag = local.extra_tag
  }
}