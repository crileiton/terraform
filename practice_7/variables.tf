variable "virginia_cidr" {
  description = "CIDR block for the VPC in Virginia"
  type        = map(string)
}

# variable "public_subnet" {
#   description = "CIDR block for the public subnet"
#   type        = string
# }

# variable "private_subnet" {
#   description = "CIDR block for the private subnet"
#   type        = string
# }

variable "subnets" {
  description = "List of subnets"
  type        = list(string)
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
}

variable "sg_ingress_cidr" {
  description = "CIDR block for the ingress rule"
  type        = string
}

variable "private_key_path" {
  description = "Path to the private key"
  type        = string
}

variable "ec2_specs" {
  description = "Parameters of instance"
  type        = map(string)
}