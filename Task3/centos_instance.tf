resource "aws_instance" "centos" {
  ami = var.centos_ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.private_subnet.id
    # subnet_id = aws_subnet.public_subnet.id

  vpc_security_group_ids = [aws_security_group.centos_sg.id]
    # vpc_security_group_ids = [aws_security_group.ubuntu_sg.id]

    # associate_public_ip_address = true

  key_name = "aotilms_keypair"

  tags = {
    Name = "Task3 centos"
  }

}