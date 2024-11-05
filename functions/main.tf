variable "test1" {
  default = "abc"
}

output "functions-test" {
  value = upper(var.test1)
}