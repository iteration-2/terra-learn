# conditions in t
resource "aws_instance" "condition-test" {
  ami = ""
  instance_type = var.instance_type == "t2*" ? "t3.micro" : var.instance_type
}

variable "instance_type" {}