resource "aws_security_group" "jenkins_ec2" {
  name        = "${var.instance_name}-sg"
  description = "Jenkins security group for ${var.instance_name}"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_instance" "jenkins_ec2" {
  //This is the AMI for Amazon Linux 2
  ami           = "ami-0443305dabd4be2bc"
  instance_type = "t2.micro"

  user_data       = file("${path.module}/jenkins_install.sh")
  key_name        = "EC2 Tutorial"
  security_groups = ["${aws_security_group.jenkins_ec2.name}"]

  tags = {
    Name = var.instance_name
  }

}
