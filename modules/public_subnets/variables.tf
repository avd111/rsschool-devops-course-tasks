variable "vpc_id" {
  description = "ID VPC"
  type        = string
}


variable "public_subnet_cidrs" {
  description = "LIST Cidrs for public subnets"
  type        = list(string)
}

variable "azs" {
  description = "List of aviability zones"
  type        = list(string)
}

variable "project_name" {
  description = "testtesttest"
  type        = string
}

