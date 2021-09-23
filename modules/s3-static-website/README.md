# S3 Static Website Hosting Module

## Purpose

The purpose of the module is to quickly set up an s3 bucket that can host a static website.


### How does it work

The script configures an AWS s3 bucket that is publicly available and able to host a static website. 
This is done by creating an s3 policy that allows for public read access.

After the configuration is applied the user has to sync their s3 bucket with the directory containing their static website.
```
$ aws s3 sync {website_directory} {url for s3} --recursive
```