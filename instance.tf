resource "aws_instance" "dfu-dev-server" {
  ami           = "ami-0971b4b88a87adeef"
  instance_type = "t2.small"
  security_groups = [aws_security_group.allow_ssh.name, aws_security_group.allow_http.name, aws_security_group.allow_https.name]
  key_name = aws_key_pair.dfu-dev-server-key.key_name
  
  root_block_device {
    volume_type = "gp2"
    volume_size = "30"
  }

  tags = {
    Name = "DFU-Dev-Server"
  }

  volume_tags = {
    Name = "DFU-Dev-Server"
  }
}
