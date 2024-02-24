resource "aws_instance" "server" {
  ami                     = data.aws_ami.image.id
  instance_type           = "t3.nano"
  vpc_security_group_ids  = [var.sg]

  provisioner "remote-exec" {

    # connection block establishes connection to this
    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = self.private_ip             # aws_instance.sample.private_ip : Use this only if your provisioner is outside the resource.
    }

    inline = [
      "ansible-pull -U https://github.com/richellemaria/AnsibleRepo.git -e ENV=dev -e COMPONENT=mongodb roboshop-pull.yml"
    ]
  }
}

variable "sg"{}

output "public_ip"{
    value=aws_instance.server.public_ip
}