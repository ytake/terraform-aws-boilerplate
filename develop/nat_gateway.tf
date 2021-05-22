resource "aws_nat_gateway" "DevelopNatGateway" {
  tags = {
    "Name" = "DevelopNatGateway"
  }
  allocation_id = aws_eip.ForDevelopNatGateway.id
  subnet_id = aws_subnet.DevelopAPublic.id
}

