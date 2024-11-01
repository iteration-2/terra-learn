resource "aws_spot_instance_request" "spot_instance_test" {
  ami = ""
  vpc_security_group_ids = [""]
  tags = {
    name = test
  }
}