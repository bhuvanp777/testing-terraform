resource "aws_instance" "example2" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  security_groups = [
    "sg-0123456789abcdef",
    "sg-abcdef0123456789",
  ]
}

variable "region" {
  type = string
  default = "us-west-2"
}

resource "aws_instance" "example" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id = var.vpc_id # incorrect variable reference
}
