# variables.tf
variable "bucket_name" {
  description = "Base name of the S3 bucket"
  type        = string
}

variable "force_destroy" {
  description = "Allow force deletion of the S3 bucket"
  type        = bool
  default     = true
}


variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table for state locking"
  type        = string
}

variable "environment" {
  description = "Environment for the resources"
  type        = string
  default     = "dev"
}

