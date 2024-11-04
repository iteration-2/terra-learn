data "aws_security_group" "allow-all" {
  name = "allow-all"
}

output "sg-allow-all" {
  value = data.aws_security_group.allow-all
}