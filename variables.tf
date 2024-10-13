# variables.tf
variable "region" {
  description = "AWS Region"
  default     = "eu-north-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "172.31.0.0/16"
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["172.31.64.0/20", "172.31.80.0/20"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["172.31.96.0/20", "172.31.112.0/20"]
}

variable "azs" {
  description = "Availability zones for subnets"
  type        = list(string)
  default     = ["eu-north-1a", "eu-north-1b"]
}


variable "bastion_ami" {
  description = "AMI ID for Bastion"
  type        = string
  default     = "ami-01c1b309c9c64dbce"
}

variable "nat_ami" {
  description = "AMI ID for NAT"
  type        = string
  default     = "ami-02098ccf23f807b4a"
}

variable "project_name" {
  description = "Project name"
  type        = string
}
