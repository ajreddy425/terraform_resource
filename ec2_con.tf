# resource "aws_instance" "ec2_con" {
#   ami                         = "ami-07eaf2ea4b73a54f6"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
# #   vpc_security_group_ids      = [aws_security_group.my_sg.id]
#   user_data                   = file("./scripts/apache1.sh")
#   key_name                    = "2501keypair"
#   count                       = var.IsToTest == true ? 1 : 0


#   tags = {
#     Name = "ec2-con-demo"
#   }
# }



# variable "IsToTest" {
#   default = true
# }