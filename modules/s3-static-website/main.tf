resource "aws_s3_bucket" "static-website" {
  bucket = var.bucket_name
  acl    = "public-read"
  policy = data.aws_iam_policy_document.bucket_policy.json
  force_destroy = true
  lifecycle {
    prevent_destroy = false
  }

  website {
    index_document = "index.html"
    error_document = "index.html"
  }

}