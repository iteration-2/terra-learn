
#Declare a Variable
variable "age" {
  default = 10
}

variable "map_test" {
  default = {
    x = 10
    y = 32
  }
}

#Print a variable
output "print_age" {
  value = var.age
}

output "print_map" {
  value = var.map_test
}