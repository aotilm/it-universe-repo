resource "aws_instance" "ubuntu" {
  # id образу системи
  ami = var.ubuntu_ami

  # тип інстансу
  instance_type = var.instance_type

  # в якій підмережі працює
  subnet_id = aws_subnet.public_subnet.id

  # налаштування security group
  vpc_security_group_ids = [aws_security_group.ubuntu_sg.id]
  
  # призначення публічної ip адреси
  associate_public_ip_address = true
  
  # привʼязка згенерованого в aws ключа доступу через ssh
  key_name = "aotilms_keypair"

  tags = {
    Name = "Task3 ubuntu"
  }

  # обʼєднується вміст двох скриптів та розділяється новим рядком 
  user_data = join("\n", [
    file("${path.module}/apache_autoinstall.sh"),
    file("${path.module}/ubuntu_docker_install.sh")
  ])



}