resource "aws_instance" "sample" {
  ami                     = "ami-060f5a4e0d027309e"
  instance_type           = "t3.nano"
  vpc_security_group_ids  = [aws_security_group.allow_all.id]

  tags = {
    Name = "TerraformServer"
  }
}

resource "aws_security_group" "allow_all" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}