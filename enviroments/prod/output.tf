output "launch_template_id" {
  description = "ID of the created launch template"
  value       = module.ec2.launch_template_id
}

output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = module.ec2.instance_id
}

