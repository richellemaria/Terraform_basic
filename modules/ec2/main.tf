resource "aws_instance" "server" {
  ami                     = "data.aws_ami.image.id"
  instance_type           = "t3.nano"
  vpc_security_group_ids  = [var.sg]
}

variable "sg"{}

output "public_ip"{
    value=aws_instance.server.public_ip
}