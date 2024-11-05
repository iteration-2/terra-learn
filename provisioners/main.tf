resource "aws_instance" "provisioner-test" {
  ami = ""
  vpc_security_group_ids = [data.aws_security_group.allow-all.id]

  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = self.public_ip
    }

    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl restart nginx"
    ]
  }

}
data "aws_security_group" "allow-all" {
  name = "allow-all"
}


## Decouple the provisioner in following scenarios:
#incase of failure in provisioner the resource should not be recreated.
#in case of re-run of provisioner we should be able to do that.

resource "aws_instance" "provisioner-test" {
  ami                    = ""
  vpc_security_group_ids = [data.aws_security_group.allow-all.id]
}

resource "null_resource" "provisioner-test2" {
  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.provisioner-test.public_ip
    }

    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl restart nginx"
    ]
}