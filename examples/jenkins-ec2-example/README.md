# Building an EC2 instance hosting Jenkins

## Purpose

The purpose of the script is to showcase how to use the [jenkins-ec2 module](../../modules/jenkins-ec2). 


### How to run this script
```
$ terraform init
$ terraform plan
# terraform apply - var ... isn't necessary, you could just run terraform apply and enter the instance name when prompted
$ terraform apply - var "instance_name= "
$ terraform apply -destroy
```
Copy the jenkins_instance_ip output and paste it into your browser to access Jenkins.