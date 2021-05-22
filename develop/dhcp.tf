resource "aws_vpc_dhcp_options" "DevelopDHCP" {
  domain_name = "ap-northeast-1.compute.internal dev.internal"
  domain_name_servers = [
    "AmazonProvidedDNS",
  ]
  tags = {
    "Name" = "DevelopDefault"
  }
  tags_all = {
    "Name" = "DevelopDefault"
  }
}

//
resource "aws_vpc_dhcp_options_association" "DevelopDNSResolver" {
  dhcp_options_id = aws_vpc_dhcp_options.DevelopDHCP.id
  vpc_id = aws_vpc.DevelopVPC.id
}
