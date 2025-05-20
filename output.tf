# Output the bucket name
output "bucket_name" {
  value = aws_s3_bucket.bucket-s3.bucket

}

# Output the bucket region
output "bucket_region" {
  value = aws_s3_bucket.bucket-s3.region

}

# Output the DynamoDB table name
output "dynamodb_table_name" {
  value = aws_dynamodb_table.terraform-remote-state-lock.name

}
