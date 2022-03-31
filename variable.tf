// variable "variable_logical_name"{}

variable "vpc_cidr" {
  description = "enter cidr block of your VPC"
  default     = "172.16.0.0/16"
}

// assign  vpc tags as a variable

# variable "vpc_name" {
#   description = "Give Name for your VPC"
#    default = "my-vpc-terraform"
# }

variable "vpc_location" {
  description = "enter location of your VPC"
  default     = "Bangalore"

}