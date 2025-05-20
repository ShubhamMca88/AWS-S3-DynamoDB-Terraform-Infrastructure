# DynamoDB table for remote state locking
resource "aws_dynamodb_table" "terraform-remote-state-lock" {
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = var.dynamodb_table_name

  attribute {
    name = var.dynamodb_table_name
    type = "S"
  }

  tags = {
    Name = var.dynamodb_table_name
    ENV  = "prod"
  }
}