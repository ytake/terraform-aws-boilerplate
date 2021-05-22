// internet gateway
resource "aws_internet_gateway" "DevelopGW" {
  vpc_id = aws_vpc.DevelopVPC.id
  tags = {
    Name = "DevelopGW"
  }
}
