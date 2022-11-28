resource "aws_instance" "ec2" {
  instance_type = var.machine_type
  ami           = "ami-0f5e8a042c8bfcd5e"

  subnet_id = element(var.shared_vpc_public_subnets, 1)

  disable_api_termination = var.disable_termination

  tags = var.tags

  root_block_device {
    encrypted = true
  }
  # depends_on = [
  #   var.ec2_dependson
  # ]
}