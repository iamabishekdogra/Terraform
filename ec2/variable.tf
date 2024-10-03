# string variable for the AWS region
variable "aws_region" {
  type        = string
  default     = "us-east-1"
}

# string variable for the instance type
variable "instance_type" {
  type        = string
  default     = "t2.micro"
}

# list variable for availability zones
variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "instance_count" {
  type = number
  default = 2
}

# Define a map variable for AMIs
variable "amis" {
  type = map(string)
  default = {
    "us-east-1a" = "ami-0e86e20dae9224db8"
    "us-east-1b" = "ami-005fc0f236362e99f"
  }
}

variable "key_name" {
  type = string
  default = "aws"
  
}

# Define a boolean variable to enable monitoring
variable "enable_monitoring" {
  type    = bool
  default = false
}

variable "subnet_id" {
  type = list(string)
  default = ["subnet-028af0c013f0eaeac", "subnet-0b11ac93c4292e688" ]
}
