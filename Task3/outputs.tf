output "ubuntu_instance_public_ip" {
    description = "ubuntu public ip"
    value = aws_instance.ubuntu.public_ip
}

output "centos_instance_public_ip" {
    description = "centos public ip"
    value = aws_instance.centos.public_ip
}
