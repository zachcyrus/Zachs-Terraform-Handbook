output "static_website_url" {
  value = module.s3-website.static_website_link
}

output "s3_bucket_name" {
  value = module.s3-website.bucket_name
}