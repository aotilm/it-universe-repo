provider "aws" {
    region = var.aws_region
}

resource "aws_instance" "ubuntu" {
    ami = var.ubuntu_ami
    instance_type = var.instance_type

    tags = {
    Name = "Task3 ubuntu"
    }
}

resource "aws_instance" "centos" {
    ami = var.centos_ami
    instance_type = var.instance_type

    tags = {
    Name = "Task3 centos"
    }
}
