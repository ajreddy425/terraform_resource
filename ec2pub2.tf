// ec2 instance in public subnet 02

# resource "aws_instance" "pub2ec2" {
#   ami                         = "ami-07eaf2ea4b73a54f6"
#   instance_type               = "t2.micro"
# associate_public_ip_address = true
#   subnet_id                   = aws_subnet.subnet2.id
#   vpc_security_group_ids      = [aws_security_group.my_sg.id]
#   user_data                   = file("./scripts/apache2.sh")

#   tags = {
#     Name = "webserver02-terraform"
#   }
# }
