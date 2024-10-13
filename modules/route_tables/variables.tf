variable "vpc_id" {
  description = "ID VPC"
  type        = string
}

variable "igw_id" {
  description = "ID gateway"
  type        = string
}

variable "public_subnet_ids" {
  description = "List  ID of public subnets"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "List ID of private subnets"
  type        = list(string)
}

variable "project_name" {
  description = "Project name"
  type        = string
}

