
#Declare a Variable
variable "age" {
  default = 10
}

variable "map_test" {
  x = 10
  y = 20
}

#Print a variable
output "print_age" {
  value = var.age
}

output "print_map" {
  value = var.map_test
}