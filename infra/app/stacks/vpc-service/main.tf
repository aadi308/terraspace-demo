locals {
  base_tags_with_env = merge(
    { "Env" = var.env_name },
    var.base_tags
  )
}

module "vpc-service" {
  source = "../../modules/vpc"

  env_name = var.env_name

  aws_azs = [
    "us-west-1b", "us-west-1c"
  ]

  # VPC
  vpc_cidr = var.cidr

  vpc_private_subnets = var.private_subnets

  vpc_public_subnets = var.public_subnets

  tags = local.base_tags_with_env
}
