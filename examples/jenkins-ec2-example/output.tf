output "jenkins_instance_ip" {
  value = module.jenkins-ec2.jenkins_endpoint
}