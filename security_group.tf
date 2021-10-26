resource "aws_security_group" "aws-demo-security-group" {
  name   = "rmaury-aws-demo"
  vpc_id = aws_vpc.aws-demo.id

  tags = {
    Name               = "rmaury-aws-demo"
    Owner              = "rmaury"
    Purpose            = "aws-demo"
    "Created Date"     = "8-18-2021"
    Department         = "SA"
    "Estimated Expiry" = "8-18-2022"
  }

  ingress {
    to_port     = 22
    from_port   = 22
    protocol    = "tcp"
    cidr_blocks = ["<cidr>"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
