variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_a_cidr" {
  description = "CIDR public subnet AZ A"
  type        = string
}

variable "public_subnet_b_cidr" {
  description = "CIDR public subnet AZ B"
  type        = string
}

variable "private_subnet_a_cidr" {
  description = "CIDR private subnet AZ A"
  type        = string
}

variable "private_subnet_b_cidr" {
  description = "CIDR private subnet AZ B"
  type        = string
}

variable "az_a" {
  description = "Availability Zone A"
  type        = string
}

variable "az_b" {
  description = "Availability Zone B"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}