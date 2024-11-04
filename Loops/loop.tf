#this creates 10 null resources
resource "null_resource" "loop-test" {
  count = 10
}



#
resource "null_resource" "loop-for_each" {
  for_each = var.colours
}

variable "colours" {
  default = {
    red = 31
    green = 32
    yellow = 33
    bluew = 34
    magenta = 35
    cyan = 36


  }
}