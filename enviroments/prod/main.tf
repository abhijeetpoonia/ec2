module "launch_template" {
  source               = "../../modules/launch_template"
  launch_template_name = var.launch_template_name
  instance_type       = var.instance_type
  ami_id              = var.ami_id
  key_name            = var.key_name
  subnet_id           = var.subnet_id
  vpc_id              = var.vpc_id
}
