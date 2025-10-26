variable "components" {
  default = {
    frontend = {
      instance_type = "t3.small"
    }
    backend = {
      instance_type = "t3.small"
    }
    mysql = {
      instance_type = "t3.small"
    }
  }
}

variable "ami" {
  default = "ami-09c813fb71547fc4f"
}

variable "vpc_security_group_ids" {
  default = ["sg-0618928820c39d1c2"]
}