# Terraform script for AWS S3 static website hosting

## Terraform instructions
```
$ terraform init
$ terraform plan
$ terraform apply

## To tear down

$ terraform apply -destroy
```


## How to copy website directory and upload to s3 bucket.
```
$ aws s3 cp OfficialPortfolio/ s3://$(terraform output -raw website_bucket_name)/ --recursive
```