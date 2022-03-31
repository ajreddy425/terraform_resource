# resource "aws_vpc" "main2" {
#   cidr_block       = "192.168.0.0/16"
#   instance_tenancy = "default"
#   count            = terraform.workspace == "default" ? 1 : 0
#   tags = {
#     Name = "terraform-con-vpc"
#   }
# }


// true means always one
// false means always zero