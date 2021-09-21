output "jenkins_endpoint" {
  description = "IP address of the recently built jenkins"
  value       = "${aws_instance.jenkins_ec2.public_ip}:8080"
}