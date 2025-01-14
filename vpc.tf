resource "aws_vpc" "sample-vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "sample-vpc"
  }
}

# resource "aws_vpc" "sample-vpc2" {
#   cidr_block = "10.1.0.0/16"
#   enable_dns_hostnames = true
#   tags = {
#     Name = "sample-vpc2"
#   }
# }