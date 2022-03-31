// output files


output "account_id" {
  value = data.aws_caller_identity.current.account_id // data.data_logical_name.output_logical_name.id
}


output "vpc_id" {
  value = aws_vpc.main.id
}


# output "pub1ec2id" {
#   value = aws_instance.pub1ec2.id
# }

# output "pri1ec2id" {
#   value = aws_instance.priec2.id
# }

output "list_of_azs" {
  value = local.x
}

output "no_of_azs" {
  value = length(local.x)
}