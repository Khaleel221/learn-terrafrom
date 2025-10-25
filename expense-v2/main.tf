resource "aws_instance" "ec2-nodes" {
  count         = length(var.components)
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0618928820c39d1c2"]

  tags = {
    Name = var.components[count.index]
  }
}

variable "components" {
default = ["frontend", "backend" ,"mysql"]
}