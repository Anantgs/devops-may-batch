#create datasource for ami
data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners = [ "amazon" ]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  filter{
    name = "architecture"
    values = ["x86_64"]
  }

}

# print output of above datasource
output "latest_amazon_linux_ami_id" {
  value = data.aws_ami.latest_amazon_linux.id
}