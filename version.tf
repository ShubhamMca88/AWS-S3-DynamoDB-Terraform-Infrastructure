# This file configures remote state for the Terraform project.
# The state is stored in an S3 bucket, locked using a DynamoDB table, and encrypted.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.93.0"
    }
  }
# if use remote state, uncomment the following block
  # backend "s3" {
  #   bucket         = "bucket-name"                 # Make sure this matches your actual bucket name
  #   key            = "terraform.tfstate"           # State file path in the bucket
  #   region         = "us-east-1"                   # AWS region
  #   dynamodb_table = "terraform-remote-state-lock" # Table used for state locking
  #   encrypt        = true                          # Enable server-side encryption
  # }
}

provider "aws" {
  # access_key = var.aws_access_key
  # secret_key = var.aws_secret_key
  # region = var.aws_region

  # the credentials are stored in the environment variables e.g. .env file 
}
