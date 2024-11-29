variable "virginia_cidr" {
  description = "CIDR block for the VPC in Virginia"
  type        = string
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