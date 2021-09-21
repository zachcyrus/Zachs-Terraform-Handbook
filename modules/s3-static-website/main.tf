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

resource "aws_s3_bucket_policy" "public_read" {
  bucket = aws_s3_bucket.static-website.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource = [
          aws_s3_bucket.static-website.arn,
          "${aws_s3_bucket.static-website.arn}/*",
        ]
      },
    ]
  })
}