#Initial format for terraform#
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

#Recommend don't leave access and secret key#
provider "aws" {
  region     = "us-east-1"
}

#Create an aws instace#
resource "aws_instance" "example" {
  ami = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServer"
  }
}
#Use terraform plan to see the changes and all the infraestructure that will be create#
#Use terraform apply to execute and create the infraetructure: with -auto-approve you accept directly all the changes#
#Use terraform validate to make sure the configuration syntactically valid and internally consistent#