variable "vpc_id" {
  description = "The ID of the VPC"
  default     = "" # Example VPC ID
}

variable "ec2_security_group_id" {
  description = "The ID of the EC2 security group"
  default     = "" # Example EC2 security group ID
}

variable "rds_security_group_id" {
  description = "The ID of the RDS security group"
  default     = "" # Example RDS security group ID
}