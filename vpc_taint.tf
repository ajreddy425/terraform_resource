// taint command (FAQ)

# resource "aws_vpc" "taint_demo" {
#   cidr_block       = "10.0.0.0/16"
#   instance_tenancy = "default"

#   tags = {
#     Name = "vpc_taint"
#   }
# }