  terraform {
    backend "s3" {
        bucket         	   = "rmaury-terraform-store"
        key              	   = "AWS/terraform.tfstate"
        region         	   = "us-east-1"
        encrypt        	   = true
        dynamodb_table = "terraform_lock"
    }
  }