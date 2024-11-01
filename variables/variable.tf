
#Declare a Variable
variable "age" {
  default = 24
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

#access a particular value in map
output "map_particular" {
  value = var.map_test["x"]
}