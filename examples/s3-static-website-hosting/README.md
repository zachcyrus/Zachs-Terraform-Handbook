# Creating a static s3 website with Terraform

## Purpose

The purpose of the script is to showcase how to use the [s3-static-website module](../../modules/s3-static-website). 


### How to run this script
```
$ terraform init
$ terraform plan
# terraform apply - var ... isn't necessary, you could just run terraform apply and enter the bucket name when prompted
$ terraform apply - var "bucket_name= "
$ terraform apply -destroy
```

### Uploading static website contents to s3

1. Copy the s3_bucket_name output, you will need it to run the following command. 
2. Run the following command to sync the directory of your static website to your newly created s3 bucket. 
    ```
    $ aws s3 sync {path_to_website_directory} s3://{s3_bucket_name}
    ```
3. To access the the website just follow the static_website_url output from terraform. 