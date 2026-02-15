variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-2"
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "cloudfront_distribution_id" {
  description = "ID of existing CloudFront distribution"
  type        = string
}
