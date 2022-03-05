resource "aws_key_pair" "dfu-dev-server-key" {
  key_name = "dfu-dev-server-key"
  public_key = file("./ssh-keys/dfu-dev-server-key.pub")
}
