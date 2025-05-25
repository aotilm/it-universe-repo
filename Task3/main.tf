# НАЛАШТУВАННЯ ПРОВАЙДЕРА ВСТАНОВЛЮВАЛИСЬ ЧЕРЕЗ AWS CLI

# vpc
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "aotilms_vpc"
  }
}

# інтернет шлюз для доступу vpc в інтернет
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.my_vpc.id
}
