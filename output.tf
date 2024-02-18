output "dev_instance_id" {
  value       = aws_instance.dev-ec2.id
  
}

output "prod_instance_id" {
  value       = aws_instance.prod-ec2.id
}
