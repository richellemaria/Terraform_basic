resource "aws_instance" "server" {
  ami                     = "ami-060f5a4e0d027309e"
  instance_type           = "t3.nano"
  vpc_security_group_ids  = [var.sg]
}

variable "sg"{}

output "public_ip"{
    value=aws_instance.server.public_ip
}