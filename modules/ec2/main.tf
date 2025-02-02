resource "aws_security_group" "instance_sg" {
  name_prefix = "instance_sg"
  vpc_id      = var.vpc_id

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

  tags = {
    Name = "instance-security-group"
  }
}

resource "aws_launch_template" "this" {
  name = var.launch_template_name

  image_id      = var.ami_id
  instance_type = var.instance_type

  network_interfaces {
    associate_public_ip_address = true
    security_groups            = [aws_security_group.instance_sg.id]
    subnet_id                  = var.subnet_id
  }

  key_name = var.key_name

  tags = {
    Name = "prod-instance"
  }
}

resource "aws_instance" "this" {
  launch_template {
    id      = aws_launch_template.this.id
    version = "$Latest"
  }

  tags = {
    Name = "prod-instance"
  }
}
