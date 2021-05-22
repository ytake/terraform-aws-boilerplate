// for nat
resource "aws_eip" "ForDevelopNatGateway" {
  tags = {
    "Name" = "ForDevelopNatGateway"
  }
}
