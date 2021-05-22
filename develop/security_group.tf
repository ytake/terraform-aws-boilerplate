resource "aws_security_group" "DevelopSSH" {
  name = "DevelopSSH"
  description = "Allow SSH"
  vpc_id = aws_vpc.DevelopVPC.id
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [
      "172.10.0.0/16"
    ]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
  tags = {
    Name = "DevelopSSH"
  }
}

resource "aws_security_group" "DevelopWebStandard" {
  name = "DevelopWebStandard"
  description = "For Web Application Server"
  vpc_id = aws_vpc.DevelopVPC.id
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"]
    ipv6_cidr_blocks = [
      "::/0"]
  }
  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"]
    ipv6_cidr_blocks = [
      "::/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
    ipv6_cidr_blocks = [
      "::/0"]
  }
  tags = {
    Name = "DevelopWebStandard"
  }
}

resource "aws_security_group" "DevelopWebServerGroup" {
  name = "DevelopWebServerGroup"
  description = "For Web Application Server Group"
  vpc_id = aws_vpc.DevelopVPC.id
  ingress {
    self = true
    from_port = 0
    protocol = "-1"
    to_port = 0
    security_groups = [
      aws_security_group.DevelopWebStandard.id,
      aws_security_group.DevelopSSH.id
    ]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
  tags = {
    Name = "DevelopWebServerGroup"
  }
}

// for bastion
/*
resource "aws_security_group" "DevelopBastionSSH" {
  name = "DevelopBastionSSH"
  description = "Bastion SSH"
  vpc_id = aws_vpc.DevelopVPC.id
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
  tags = {
    Name = "DevelopBastionSSH"
  }
}
*/
