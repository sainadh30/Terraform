# AWS EC2 instance

resource "aws_instance" "myec2" {
  ami = data.aws_ami.amzlinux2.id
  #instance_type          = var.instance_type
  #instance_type = var.instance_type_list[1]
  instance_type          = var.instance_type_map["test"]
  key_name               = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh-web.id]
  user_data              = file("${path.module}/app1-install.sh")
  count                  = 2
  tags = {
    "Name" = "EC2_Demo-${count.index}"
  }
}