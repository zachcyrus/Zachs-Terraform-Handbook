# Jenkins EC2 Module

## Purpose

The purpose of the script is to help standardize and ease the process of building a new EC2 t2.micro hosting Jenkins. 


### How does it work

This module is able to set up Jenkins on an Amazon Linux EC2 t2.micro thanks to the [bash script](jenkins_install.sh) in this repo. The bash script installs all dependencies needed to install and utilize 
Jenkins such as Git, Java sdk, and amazon linux extras. It also utilizes the system manager to start Jenkins. 
This module also makes a security group that opens port 8080 and port 80 to allow users to access the Jenkins instance. 
To help ease the process it also saves the Jenkins password required for startup in the home directory for quick and easy access. 
Lastly it outputs the ip address of the EC2 so the user can copy and paste that value into their process and access Jenkins.


#### Tips
In order to obtain the Jenkins password utilize the following command in the users home directory ie ~/
```
$ sudo cat jenksPassword.txt
```