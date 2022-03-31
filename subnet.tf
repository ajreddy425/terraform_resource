//  Creeate subnet

// VPC's resource_type.logical name
// vpc's phone number = resource_type.logical_name.id

resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.vpc_cidr, 6, count.index) //prefix,newbits,net number
  count             = local.l
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = {
    Name = "Public-subnet-${count.index + 1}-terraform"
  }
}

// to comment/uncomment alll at a time put ctrl+?

resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.vpc_cidr, 6, count.index + local.l)
  count             = local.l
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = {
    Name = "Priavte-subnet-${count.index + 1}-terraform"
  }
}