#this creates 10 null resources
resource "null_resource" "loop-test" {
  count = 10
}



