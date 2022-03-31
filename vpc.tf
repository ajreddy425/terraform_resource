/// Create VPC ( FAQ)
resource "aws_vpc" "main" { // resource "resource_type" "logical_name"
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name        = "my-vpc-terraform-${local.ws}"
    Location    = var.vpc_location // "var.vpc_location"==> don't give like this
    Environment = local.ws

  }
}



// Note : Make sure that you are saving the code ( ctrl + s) ---> File--> Select Auto Save
// Never ever change resource types
// you can change logical name , it can be any name
// logical names should be unique

# resource "aws_vpc" "vpc_console_import" {}  // logical name can be anything



// variable for fpr_each
# variable "vpc_cidrs" {
#   default = {
#     app-one = "172.16.0.0/16"
#     app-two = "192.168.0.0/16" // map of strings, key =value
#   }
# }

# resource "aws_vpc" "main1" {
#   for_each   = var.vpc_cidrs
#   cidr_block = each.value
#   tags = {
#     Name = each.key
#   }
# }