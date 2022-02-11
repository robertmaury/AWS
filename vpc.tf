resource "aws_vpc" "aws-demo" {
  cidr_block = "10.0.0.0/16"

  # tags = {
  #   Name = "${var.name}-aws-demo"
  # }

  tags = {
    Name               = "rmaury-aws-demo"
    Owner              = "rmaury"
    Purpose            = "aws-demo"
    "Created Date"     = "2-11-2022"
    Department         = "SA"
    "Estimated Expiry" = "2-11-2023"
  }
}
