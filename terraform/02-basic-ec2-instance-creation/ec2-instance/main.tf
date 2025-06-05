# Terraform Block
terraform {
  required_version = ">= 1.6" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

# Provider Block
provider "aws" {
  region  = "us-east-1"
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/

# EC2 Instance
resource "aws_instance" "myec2vm" {
  ami                    = "ami-0953476d60561c955" // For us-east-1
  instance_type          = "t2.micro"
  user_data              = file("app1-install.sh")
  key_name               = "eks-terraform-key"
  #vpc_id                 = "vpc-007a6c47782f135d4"
  subnet_id              = "subnet-0e5f71f40fea0028c"
  vpc_security_group_ids = [ "sg-040f2d8ca9157b08b" ]
  tags = {
    "Name" = "EC2 Demo 2"
  }
}