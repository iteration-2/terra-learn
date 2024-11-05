resource "aws_instance" "expense-project" {
  for_each = each.value["instance_type"]
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = each.key
  }
}


variable "ami" {
  default = "ami-09c813fb71547fc4f"
}

variable "security_groups" {
  default = ["sg-09880b52d970e879b"]
}

variable "instance_type" {
  default = {
    frontend = {
      instance_type = "t3.micro"
    }
    mysql = {
      instance_type = "t3.small"
    }
    backend = {
      instance_type = "t3.micro"
    }
  }
}

