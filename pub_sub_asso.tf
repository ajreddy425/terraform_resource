// subnets associations

# resource "aws_route_table_association" "PubSub01" {
#   subnet_id      = aws_subnet.subnet1.id
#   route_table_id = aws_route_table.pub_rt.id
# }


# resource "aws_route_table_association" "PubSub02" {
#   subnet_id      = aws_subnet.subnet2.id
#   route_table_id = aws_route_table.pub_rt.id
# }