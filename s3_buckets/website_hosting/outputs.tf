output "website_bucket_name" {
  description = "Name of the bucket"
  value       = aws_s3_bucket.site.id
}

output "bucket_endpoint" {
  description = "Bucket endpoint"
  value       = aws_s3_bucket.site.website_endpoint
}

output "domain_name" {
  description = "Website endpoint"
  value       = var.bucket_name
}