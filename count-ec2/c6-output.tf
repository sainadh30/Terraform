# AWS EC2 Instance Output Block

# EC2 Instance Public IP
output "instance_publicip" {
  description = "EC2 Instance Public IP"
  value       = { for c, instance in aws_instance.myec2 : c => instance.public_ip }
}

# EC2 Instance Public DNS
output "instance_publicdns" {
  description = "EC2 Instance Public DNS"
  value       = { for c, instance in aws_instance.myec2 : c => instance.public_dns }
}