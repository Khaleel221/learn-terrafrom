variable "fruits"{}

output "apple" {
  value = "apple qty - ${var.fruits["apple"]["qty"]}, price is - ${var.fruits["apple"]["price"]}"
}

output "banana" {
  value = "banana qty - ${var.fruits["banana"]["qty"]}, price is - ${var.fruits["banana"]["price"]}"
}