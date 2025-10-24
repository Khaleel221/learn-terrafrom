variable "fruits" {}

output "apple" {
  value = "apple qty - ${lookup(var.fruits["apple"], "qty", 0)}, price is - ${lookup(var.fruits["apple"], "price", 0.5)}"
}

output "banana" {
  value = "banana qty - ${lookup(var.fruits["banana"], "qty", 0)}, price is - ${lookup(var.fruits["banana"], "price", 0.5)}"
}