variable "aws_region" {
  description = "aws region"
  default     = "eu-north-1"
}

variable "ubuntu_ami" {
  description = "ubuntu ami"
  type        = string
  default     = "ami-0c1ac8a41498c1a9c"
}

variable "centos_ami" {
  description = "centos ami"
  type        = string
  default     = "ami-0017b1eee0eb55724"
}

variable "instance_type" {
  description = "instance type"
  default     = "t3.micro"
}
