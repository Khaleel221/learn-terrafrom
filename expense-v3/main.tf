resource "aws_instance" "ec2-nodes" {
  for_each      = var.components
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0618928820c39d1c2"]

  tags = {
    Name = each.key
  }
}

variable "components" {
  default = {
    frontend = {
      instance_type = "t3.small"
    }
    backend= {
      instance_type = "t3.small"
    }
    mysql= {
      instance_type = "t3.micro"
    }
  }
}