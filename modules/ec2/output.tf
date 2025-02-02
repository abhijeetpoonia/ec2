output "launch_template_id" {
  description = "ID of the created launch template"
  value       = aws_launch_template.this.id
}

output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.this.id
}
