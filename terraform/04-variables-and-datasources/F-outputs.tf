# Terraform Output Values
output "instance_publicip" {
    description = "Public IP of the EC2 Instance"
    value       = aws_instance.myec2vm.id
}

# PRint ec2 instance public ip
output "instance_public_ip" {
    description = "Public IP of the EC2 Instance"
    value       = aws_instance.myec2vm.public_ip
}    

