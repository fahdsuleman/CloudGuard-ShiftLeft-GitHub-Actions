data "aws_ami" "ami" {
  owners = ["amazon"]
  most_recent = true

  filter {
    name = "name"
    values = ["amzn2-ami-hvm-2.0.*"]
  }
}

variable "lifecycles" {
  default = "t2.micro"
}

