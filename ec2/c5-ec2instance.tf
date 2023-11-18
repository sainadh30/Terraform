# AWS EC2 Instance

resource "aws_instance" "myec2" {
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vps-ssh-web.id]
  user_data              = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2_Demo"
  }
}