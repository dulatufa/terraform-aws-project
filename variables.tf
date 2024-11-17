# AWS Region
variable "aws_region" {
  description = "The AWS region to deploy the infrastructure"
  default     = "us-west-2" # Change if needed
  type        = string
}

# EC2 Instance Names
variable "instance1_name" {
  description = "Name for the first EC2 instance"
  type        = string
  default     = "Web1"
}

variable "instance2_name" {
  description = "Name for the second EC2 instance"
  type        = string
  default     = "Web2"
}

# Database Credentials
variable "db_username" {
  description = "The username for the RDS MySQL database"
  type        = string
  default     = "admin" # Change as needed
}

variable "db_password" {
  description = "The password for the RDS MySQL database"
  type        = string
  sensitive   = true # Ensures the password is masked during plan/apply
}
