variable "env_name" {
  description = "variable example"
  type        = string
  default     = "test"
}

variable "name" {
  description = "ec2 name"
  type        = string
  default     = "test"
}

variable "vpc_id" {
  description = "VPC to launch instance in"
  type        = list(string)
  default     = null
}


variable "base_tags" {
  type = map(string)
  default = {
    "key" = null
  }
}

variable "custom_svc_env_tag" {
  type    = string
  default = "qa-ec2-instance"
}
