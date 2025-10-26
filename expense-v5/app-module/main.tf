resource "aws_instance" "node" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.name
  }
}

# Create DNS Record in Route53
resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = "${var.name}-dev.khaleel221.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.node.private_ip]

  depends_on = [aws_instance.node] # ensures EC2 is created first
}