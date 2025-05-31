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

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-04d29b6f966df1537" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t3.micro"
}

## ec2_bastion_public_instance_ids
output "ec2_bastion_public_instance_ids" {
  description = "List of IDs of instances"
  value       = aws_instance.ec2demo.id
}

## ec2_bastion_public_ip
output "ec2_bastion_eip" {
  description = "Elastic IP associated to the Bastion Host"
  value       = aws_instance.ec2demo.public_ip
}

## ec2_instance_public_dns
output "ec2_instance_public_dns" {
  description = "Public DNS of the EC2 instance"
  value       = aws_instance.ec2demo.public_dns
}