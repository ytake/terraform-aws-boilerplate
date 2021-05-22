resource "aws_subnet" "DevelopAPublic" {
  assign_ipv6_address_on_creation = false
  cidr_block = "172.10.10.0/24"
  tags = {
    "Name" = "DevelopAPublic"
  }
  tags_all = {
    "Name" = "DevelopAPublic"
  }
  vpc_id = aws_vpc.DevelopVPC.id
}

resource "aws_subnet" "DevelopAPrivateOne" {
  assign_ipv6_address_on_creation = false
  cidr_block = "172.10.11.0/24"
  tags = {
    "Name" = "DevelopAPrivateOne"
  }
  tags_all = {
    "Name" = "DevelopAPrivateOne"
  }
  vpc_id = aws_vpc.DevelopVPC.id
}

resource "aws_subnet" "DevelopAPrivateTwo" {
  cidr_block = "172.10.12.0/24"
  tags = {
    "Name" = "DevelopAPrivateTwo"
  }
  tags_all = {
    "Name" = "DevelopAPrivateTwo"
  }
  vpc_id = aws_vpc.DevelopVPC.id
}

resource "aws_subnet" "DevelopAPrivateThree" {
  cidr_block = "172.10.13.0/24"
  tags = {
    "Name" = "DevelopAPrivateThree"
  }
  tags_all = {
    "Name" = "DevelopAPrivateThree"
  }
  vpc_id = aws_vpc.DevelopVPC.id
}

resource "aws_subnet" "DevelopBPublic" {
  assign_ipv6_address_on_creation = false
  cidr_block = "172.10.20.0/24"
  tags = {
    "Name" = "DevelopBPublic"
  }
  tags_all = {
    "Name" = "DevelopBPublic"
  }
  vpc_id = aws_vpc.DevelopVPC.id
}

resource "aws_subnet" "DevelopBPrivateOne" {
  assign_ipv6_address_on_creation = false
  cidr_block = "172.10.21.0/24"
  tags = {
    "Name" = "DevelopBPrivateOne"
  }
  tags_all = {
    "Name" = "DevelopBPrivateOne"
  }
  vpc_id = aws_vpc.DevelopVPC.id
}

resource "aws_subnet" "DevelopBPrivateTwo" {
  cidr_block = "172.10.22.0/24"
  tags = {
    "Name" = "DevelopBPrivateTwo"
  }
  tags_all = {
    "Name" = "DevelopBPrivateTwo"
  }
  vpc_id = aws_vpc.DevelopVPC.id
}

resource "aws_subnet" "DevelopBPrivateThree" {
  cidr_block = "172.10.23.0/24"
  tags = {
    "Name" = "DevelopBPrivateThree"
  }
  tags_all = {
    "Name" = "DevelopBPrivateThree"
  }
  vpc_id = aws_vpc.DevelopVPC.id
}
