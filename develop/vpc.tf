resource "aws_vpc" "DevelopVPC" {
  assign_generated_ipv6_cidr_block = false
  cidr_block = "172.10.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  instance_tenancy = "default"
  tags = {
    "Name" = "DevelopVPC"
  }
  tags_all = {
    "Name" = "DevelopVPC"
  }
}
