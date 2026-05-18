variable "region" {
  description = "The AWS region to deploy the infrastructure"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, production)"
  type        = string
  default     = "production"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

#variable "private_subnet_cidrs" {
 # description = "List of CIDR blocks for private subnets"
 # type        = list(string)
 # default     = ["10.0.11.0/24"]
#}

variable "public_subnet_count" {
  description = "Number of public subnets to create"
  type        = number
  default     = 1
}

variable "private_subnet_count" {
  description = "Number of private subnets to create"
  type        = number
  default     = 1
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["ap-south-1"]
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-0c398cb65a93047f2" # Ubuntu 22.04 LTS
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"
}
