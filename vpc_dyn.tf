// vpc for dynamic blocks

resource "aws_vpc" "dyn" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "dynamic-vpc"
  }
}


// subnet for dynamic

resource "aws_subnet" "dyn_subnet" {
  vpc_id     = aws_vpc.dyn.id
  cidr_block = "192.168.0.0/24"
  tags = {
    Name = "dyn-subnet"
  }

}


// practic for VPC,Subnet,S3 bucket and Life cycle rule and for ec2 (without seeing try) FAQ