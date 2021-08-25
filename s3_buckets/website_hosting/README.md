
## How to copy website directory and upload to s3 bucket.
```
$ aws s3 cp OfficialPortfolio/ s3://$(terraform output -raw website_bucket_name)/ --recursive
```