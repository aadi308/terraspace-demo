locals {
  base_tags_with_env = merge(
    {
      "Name"   = var.name,
      "Custom" = var.custom_svc_env_tag
    },
    var.base_tags
  )
}

module "ec2-service" {
  source = "../../modules/ec2"

  machine_type = "t2.micro"

  disable_termination = false

  shared_vpc_public_subnets = var.vpc_id

  # ec2_dependson = var.ec2_dependson

  tags = local.base_tags_with_env
}

