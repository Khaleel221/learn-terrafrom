variable "x" {
  default = 10
}

output "x" {
  value = var.x
}

#list variable
variable "l" {
  default = [
    10,
    "hello",
    true
  ]
}

output "l" {
  value = var.l
}