variable "subnet_id" {
  description = "The ID of the subnet to deploy resources into"
  default     = "" # Example subnet ID
}

variable "ec2_security_group_id" {
  description = "The ID of the EC2 security group"
  default     = "" # Example EC2 security group ID
}