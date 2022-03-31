// data sources

data "aws_caller_identity" "current" {}


// to print the current region

data "aws_region" "current" {}

output "current_reg" {
  value = data.aws_region.current
}


// no.of azs in the region

data "aws_availability_zones" "available" {
  state = "available"
}


