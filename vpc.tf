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

resource "aws_flow_log" "vpc-01bf637028c50db1f" {
  vpc_id          = "${aws_vpc.vpc-01bf637028c50db1f.id}"
  iam_role_arn    = "<iam_role_arn>"
  log_destination = "${aws_s3_bucket.vpc-01bf637028c50db1f.arn}"
  traffic_type    = "ALL"

  tags = {
    GeneratedBy      = "Accurics"
    ParentResourceId = "aws_vpc.vpc-01bf637028c50db1f"
  }
}
resource "aws_s3_bucket" "vpc-01bf637028c50db1f" {
  bucket        = "vpc-01bf637028c50db1f_flow_log_s3_bucket"
  acl           = "private"
  force_destroy = true

  versioning {
    enabled    = true
    mfa_delete = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
resource "aws_s3_bucket_policy" "vpc-01bf637028c50db1f" {
  bucket = "${aws_s3_bucket.vpc-01bf637028c50db1f.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "vpc-01bf637028c50db1f-restrict-access-to-users-or-roles",
      "Effect": "Allow",
      "Principal": [
        {
          "AWS": [
            <principal_arn>
          ]
        }
      ],
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.vpc-01bf637028c50db1f.id}/*"
    }
  ]
}
POLICY
}