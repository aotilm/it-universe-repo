resource "aws_instance" "centos" {
  # id образу системи
  ami = var.centos_ami
  
  # тип інстансу
  instance_type = var.instance_type

  # в якій підмережі працює
  subnet_id = aws_subnet.private_subnet.id

  # налаштування security group
  vpc_security_group_ids = [aws_security_group.centos_sg.id]
  
  # привʼязка згенерованого в aws ключа доступу через ssh
  key_name = "aotilms_keypair"

  tags = {
    Name = "Task3 centos"
  }

}