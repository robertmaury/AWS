resource "aws_security_group" "aws-demo-security-group" {
  name   = "rmaury-aws-demo"
  vpc_id = aws_vpc.aws-demo.id

  tags = {
    Name               = "rmaury-aws-demo"
    Owner              = "rmaury"
    Purpose            = "aws-demo"
    "Created Date"     = "2-11-2022"
    Department         = "SA"
    "Estimated Expiry" = "2-11-2023"
  }

  ingress {
    to_port     = 22
    from_port   = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.1/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
