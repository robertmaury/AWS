resource "aws_vpc" "aws-demo" {
  cidr_block = "10.0.0.0/16"

  # tags = {
  #   Name = "${var.name}-aws-demo"
  # }

  tags = {
    Name               = "rmaury-aws-demo"
    Owner              = "rmaury"
    Purpose            = "aws-demo"
    "Created Date"     = "12-18-2023"
    Department         = "SA"
    "Estimated Expiry" = "12-18-2024"
  }
}
