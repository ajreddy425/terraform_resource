// creation of nat gateway

# resource "aws_nat_gateway" "ngw" {
#   allocation_id = aws_eip.eip.id
#   subnet_id     = aws_subnet.subnet1.id

#   tags = {
#     Name = "gw-NAT"
#   }
# }

// allocate EIP for NGW

# resource "aws_eip" "eip" {
#   vpc = true
# }