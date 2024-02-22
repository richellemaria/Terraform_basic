resource "aws_instance" "server" {
  ami                     = "ami-060f5a4e0d027309e"
  instance_type           = "t3.nano"

  tags = {
    Name = "TerraformServer"
  }
}