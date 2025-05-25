output "ubuntu_instance_public_ip" {
    description = "ubuntu public ip"
    value = aws_instance.ubuntu.public_ip
}

output "centos_instance_public_ip" {
    description = "centos public ip"
    value = aws_instance.centos.public_ip
}

output "centos_instance_private_ip" {
    description = "centos private ip"
    value = aws_instance.centos.private_ip
}
