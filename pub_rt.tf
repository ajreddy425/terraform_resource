// create route table

# resource "aws_route_table" "pub_rt" {
#   vpc_id = aws_vpc.main.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.igw.id
#   }

#   #   route {
#   #     ipv6_cidr_block        = "::/0"
#   #     egress_only_gateway_id = aws_egress_only_internet_gateway.example.id
#   #   }

#   tags = {
#     Name = "pub_rt_terraform"
#   }
# }