variable "env_name" {
  description = "variable example"
  type        = string
  default     = "vpc-test"
}

variable "cidr" {
  type    = string
  default = "10.11.120.0/21"
}

variable "private_subnets" {
  type    = list(string)
  default = ["10.11.121.0/24"]
}

variable "public_subnets" {
  type    = list(string)
  default = ["10.11.124.0/24"]
}

variable "base_tags" {
  type = map(string)
  default = {
    "key" = null
  }
}