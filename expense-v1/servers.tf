resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  security_group_id = "sg-0618928820c39d1c2"

  tags = {
    Name = "frontend"
  }
}
resource "aws_instance" "backend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  security_group_id = "sg-0618928820c39d1c2"

  tags = {
    Name = "backend"
  }
}
resource "aws_instance" "mysql" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  security_group_id = "sg-0618928820c39d1c2"

  tags = {
    Name = "mysql"
  }
}