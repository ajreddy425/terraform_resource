// proivate subnet associations


# resource "aws_route_table_association" "PriSub01" {
#   subnet_id      = aws_subnet.subnet2.id
#   route_table_id = aws_route_table.pri_rt.id
# }