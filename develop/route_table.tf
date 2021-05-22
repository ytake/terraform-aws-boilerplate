resource "aws_route_table" "DevelopPrivate" {
  tags = {
    "Name" = "DevelopPrivate"
  }
  tags_all = {
    "Name" = "DevelopPrivate"
  }
  vpc_id = aws_vpc.DevelopVPC.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.DevelopNatGateway.id
  }
}

resource "aws_route_table" "DevelopPublic" {
  tags = {
    "Name" = "DevelopPublic"
  }
  tags_all = {
    "Name" = "DevelopPublic"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.DevelopGW.id
  }
  vpc_id = aws_vpc.DevelopVPC.id
}

resource "aws_route_table_association" "DevelopPrivateAssociationAPrivateOne" {
  subnet_id = aws_subnet.DevelopAPrivateOne.id
  route_table_id = aws_route_table.DevelopPrivate.id
}

resource "aws_route_table_association" "DevelopPrivateAssociationAPrivateTwo" {
  subnet_id = aws_subnet.DevelopAPrivateTwo.id
  route_table_id = aws_route_table.DevelopPrivate.id
}

resource "aws_route_table_association" "DevelopPrivateAssociationAPrivateThree" {
  subnet_id = aws_subnet.DevelopAPrivateThree.id
  route_table_id = aws_route_table.DevelopPrivate.id
}

resource "aws_route_table_association" "DevelopPrivateAssociationBPrivateOne" {
  subnet_id = aws_subnet.DevelopBPrivateOne.id
  route_table_id = aws_route_table.DevelopPrivate.id
}

resource "aws_route_table_association" "DevelopPrivateAssociationBPrivateTwo" {
  subnet_id = aws_subnet.DevelopBPrivateTwo.id
  route_table_id = aws_route_table.DevelopPrivate.id
}

resource "aws_route_table_association" "DevelopPrivateAssociationBPrivateThree" {
  subnet_id = aws_subnet.DevelopBPrivateThree.id
  route_table_id = aws_route_table.DevelopPrivate.id
}

resource "aws_route_table_association" "DevelopPublicAssociation" {
  subnet_id = aws_subnet.DevelopAPublic.id
  route_table_id = aws_route_table.DevelopPublic.id
}

resource "aws_main_route_table_association" "DevelopRouteMain" {
  vpc_id         = aws_vpc.DevelopVPC.id
  route_table_id = aws_route_table.DevelopPublic.id
}
