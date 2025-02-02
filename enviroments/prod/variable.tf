variable "launch_template_name" {
  type        = string
  description = "Name of the launch template"
  default     = "prod-launch-template"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance"
  # Using Amazon Linux 2 AMI for ap-south-1
  default     = "ami-0449c34f967dbf18a"
}

variable "key_name" {
  type        = string
  description = "Name of the key pair"
  default     = "aes"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID where EC2 will be launched"
  default     = "subnet-0ff7ef2b7250432d7"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
  default     = "vpc-0133e1d848f62f9d5"
}

