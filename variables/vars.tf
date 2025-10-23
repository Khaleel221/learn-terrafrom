# variable "x" {
#   default = 10
# }
#
# output "x" {
#   value = var.x
# }

#list variable
# variable "l" {
#   default = [
#     10,
#     "hello",
#     true
#   ]
# }

# output "l" {
#   value = var.l
# }
#second value in list
# variable "l" {
#   default = [
#     10,
#     "hello",
#     true
#   ]
# }
# output "l" {
#   value = var.l[1]
# }
#map variable
# variable "l" {
#   default = {
#     course  = "DevOps"
#     trainer = "john"
#   }
# }
#
# output "course_name" {
#   value = var.l["course"]
# }
#variable from tfvars
variable "y" {
  description = "Sample number variable"
}
output "y" {
  value = var.y
}