// ec2 instance in public subnet 01

# resource "aws_instance" "pub1ec2" {
#   ami                         = "ami-07eaf2ea4b73a54f6"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   subnet_id                   = aws_subnet.subnet1.*.id[count.index]
#   vpc_security_group_ids      = [aws_security_group.my_sg.id]
#   user_data                   = file("./scripts/apache1.sh")
#   key_name                    = "2501keypair"
#   count                       = local.l // count.index should be there

#   tags = {
#     Name = "public-instance-terraform-${local.ws}-${count.index + 1}" // count.index always starts from zero
#   }
# }


// security groups for ec2 instance

# resource "aws_security_group" "my_sg" {
#   name        = "my_sg"
#   description = "my_sg"
#   vpc_id      = aws_vpc.main.id

#   ingress {
#     description = "http"
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]

#   }
#   ingress {
#     description = "SSH"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]

#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "my_sg_terraform"
#   }
# }