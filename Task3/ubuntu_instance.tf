resource "aws_instance" "ubuntu" {
  ami = var.ubuntu_ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.ubuntu_sg.id]
  associate_public_ip_address = true
  key_name = "aotilms_keypair"

  tags = {
    Name = "Task3 ubuntu"
  }

  user_data = join("\n", [
    file("${path.module}/apache_autoinstall.sh"),
    file("${path.module}/ubuntu_docker_install.sh")
  ])



}