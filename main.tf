# Generate a random ID to ensure bucket name is unique
resource "random_id" "bucket_id" {
  byte_length = 8
}

# Create the S3 bucket with a unique name
resource "aws_s3_bucket" "bucket-s3" {
  bucket        = "${var.bucket_name}-${random_id.bucket_id.hex}"
  force_destroy = var.force_destroy

  tags = {
    Name        = "${var.bucket_name}-${random_id.bucket_id.hex}"
    Environment = "${var.environment}"
  }
}

# Disallow public access block (override defaults and allow public access)
resource "aws_s3_bucket_public_access_block" "public_access_block" {
  bucket = aws_s3_bucket.bucket-s3.bucket

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}