provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./ec2_instance"
  ami_value = "ami-0866a3c8686eaeeba"
  subnet_id_value = "subnet-028af0c013f0eaeac"
  instance_type = "t2.micro"
}


