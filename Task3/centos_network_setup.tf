# private subnet
resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "10.0.2.0/24"
}

# centos security group 
resource "aws_security_group" "centos_sg" {
    name   = "centos-sg"
    vpc_id = aws_vpc.my_vpc.id

    # вхідний ssh в межах vpc
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [aws_vpc.my_vpc.cidr_block] # локальний трафік, доступ тільки в межах vpc (EXTRA 6)
    }

    # вхідний http в межах vpc
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [aws_vpc.my_vpc.cidr_block]
    }

    # вхідний https в межах vpc
    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = [aws_vpc.my_vpc.cidr_block]
    }

    # вхідний icmp в межах vpc
    ingress {
        from_port = -1
        to_port = -1
        protocol = "icmp"
        cidr_blocks = [aws_vpc.my_vpc.cidr_block]
    }

    # вихідний трафік лише в межах vpc
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [aws_vpc.my_vpc.cidr_block]
    }
}