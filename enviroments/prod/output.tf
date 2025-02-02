output "launch_template_id" {
  description = "ID of the created launch template"
  value       = module.launch_template.launch_template_id
}

output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = module.launch_template.instance_id
}

