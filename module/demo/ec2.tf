resource "aws_instance" "test" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = var.type

  tags = {
    Name = var.name
  }
}

variable "name" {}
variable "type" {}