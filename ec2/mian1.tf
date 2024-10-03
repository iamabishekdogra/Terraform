# Configure the AWS provider
provider "aws" {
  region = var.aws_region
}

# Create an EC2 instance using variables
resource "aws_instance" "my_instance" {
  ami = var.amis[var.availability_zones[count.index]]
  instance_type = var.instance_type
  availability_zone = var.availability_zones[count.index]
  subnet_id = var.subnet_id[count.index]
  count = var.instance_count
  monitoring = var.enable_monitoring
  key_name = var.key_name

  tags = {
    Name = "Instance-${count.index + 1}"
  }
}

# Output the instance details
output "instance_id" {
  value = aws_instance.my_instance[*].id
}

output "instance_public_ip" {
  value = aws_instance.my_instance[*].public_ip
}
