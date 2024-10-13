variable "vpc_id" {
  description = "ID VPC"
  type        = string
}

variable "private_subnet_cidrs" {
  description = "List CIDRs"
  type        = list(string)
}

variable "azs" {
  description = "List Aviablity zones"
  type        = list(string)
}

variable "project_name" {
  description = "Project name"
  type        = string
}

