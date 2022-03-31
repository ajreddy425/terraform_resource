locals {
  ws = terraform.workspace
  x  = data.aws_availability_zones.available.names
  l  = length(data.aws_availability_zones.available.names)
}