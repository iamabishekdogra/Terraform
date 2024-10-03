provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
    ami = var.ami_value
    instance_type = var.instance_type
    subnet_id = var.subnet_id_value
}