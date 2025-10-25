module "sample" {
  source = "./app-module"
  fruits = var.fruits #sending input from variable
}

variable "fruits" {
  default = ["apple", "banana"]
}

output "test" {
  value = module.sample.test
}