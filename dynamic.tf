// terraform dynamic blocks

variable "dyn_demo_ingress" {
  type = list(any)
  default = [
    {
      description = "allow 80"
      port        = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    },
    {
      description = "allow 22"
      port        = 22
      protocol    = "tcp"
      cidr_blocks = ["172.20.0.0/16"]

    },
    {
      description = "allow 1234"
      port        = 1234
      protocol    = "tcp"
      cidr_blocks = ["192.168.0.0/16"]

    }


  ]

}



resource "aws_instance" "ec2_dynamic" {
  ami                         = "ami-0d5eff06f840b45e9"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "2501keypair"
  #   monitoring                  = true
  vpc_security_group_ids = [aws_security_group.my-sg.id]
  subnet_id              = aws_subnet.dyn_subnet.id


  tags = {
    Name = "dynamic-instance-demo"
  }
}

# # security groups for ec2 instance
resource "aws_security_group" "my-sg" {
  name        = "my-sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.dyn.id

  dynamic "ingress" {
    for_each = var.dyn_demo_ingress
    content {
      description = ingress.value.description
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks

    }
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "mysg-all"
  }
}