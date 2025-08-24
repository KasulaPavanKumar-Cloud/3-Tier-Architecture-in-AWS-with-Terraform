variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_app_subnet_cidr" {
  description = "CIDR block for the private app subnet"
  type        = string
}

variable "private_db_subnet_cidr" {
  description = "CIDR block for the private DB subnet"
  type        = string
}

variable "availability_zone_1" {
  description = "Availability Zone for subnet 1"
  type        = string
}

variable "availability_zone_2" {
  description = "Availability Zone for subnet 2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami" {
  description = "AMI ID for Ubuntu EC2 instances"
  type        = string
}

variable "key_name" {
  description = "Key pair name to SSH into EC2"
  type        = string
}

variable "project_name" {
  description = "Prefix for resource names"
  type        = string
}
