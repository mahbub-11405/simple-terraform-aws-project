resource "aws_instance" "ec2" {
  ami           = "ami-0bb84b8ffd87024d8" # Change to desired AMI
  instance_type = "t2.micro"              # Change to desired instance type
  subnet_id     = var.subnet_id[0]

  # Example: setting up SSH access
  key_name        = "key.pem"
  security_groups = [var.ec2_security_group_id]
}

output "ec2_instance_id" {
  value = aws_instance.ec2.id
}
