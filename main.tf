provider "aws" {
  region = var.region
}

module "ec2_asg" {
  source = "git::https://github.com/kolusuvidyasagar/terraform-project-ec2-asg-root.git?ref=main"

  project_name       = var.project_name
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  key_name           = var.key_name
  vpc_id             = var.vpc_id
  security_group_ids   = [aws_security_group.asg_sg.id]
  subnet_ids         = var.subnet_ids
  min_size           = var.min_size
  max_size           = var.max_size
  desired_capacity   = var.desired_capacity
}
