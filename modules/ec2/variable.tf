variable "launch_template_name" {
  type        = string
  description = "Name of the launch template"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "key_name" {
  type        = string
  description = "Name of the key pair"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID where EC2 will be launched"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

