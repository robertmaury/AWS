resource "aws_vpc" "aws-demo" {
  cidr_block = "10.0.0.0/16"

  # tags = {
  #   Name = "${var.name}-aws-demo"
  # }

  tags = {
    Name = "${var.name}-aws-demo"
    Owner = "rmaury"
    Purpose = "aws-demo"
    "Created Date" = "7-21-2021"
    Department = "SA"
    "Estimated Expiry" = "7-21-2022"
  }
}