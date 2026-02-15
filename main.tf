resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = {
    Project     = "terraform-actions-demo"
    Environment = "demo"
  }
}

resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "index.html"
  content_type = "text/html"

  lifecycle {
    action_trigger {
      events  = [after_update]
      actions = [action.aws_cloudfront_create_invalidation.invalidate_cache]
    }
  }
}

action "aws_cloudfront_invalidation" "invalidate_cache" {
  config {
    distribution_id = var.cloudfront_distribution_id
    paths           = ["/*"]
  }
}
