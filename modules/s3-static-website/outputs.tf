output "bucket_name" {
  description = "Name of the bucket"
  value       = aws_s3_bucket.static-website.id
}

output "static_website_link" {
  description = "Link to the static website"
  value       = aws_s3_bucket.static-website.website_endpoint
}
