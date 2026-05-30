output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.amazon_linux.id
}

output "public_ip" {
  description = "Public IP of EC2"
  value       = aws_instance.amazon_linux.public_ip
}

output "private_ip" {
  description = "Private IP of EC2"
  value       = aws_instance.amazon_linux.private_ip
}

output "instance_state" {
  description = "State of the EC2 instance"
  value       = aws_instance.amazon_linux.instance_state
}
