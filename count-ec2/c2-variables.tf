# Input Values Block

# AWS Region
variable "aws_region" {
  description = " EC2 Instance in which AWS Region to be crated"
  type        = string
  default     = "us-east-1"
}

# AWS EC2 Instance Type - List
variable "instance_type_list" {
  description = "AWS EC2 Instance Type"
  type        = list(string)
  default     = ["t2.small", "t2.micro", "t2.large"]
}

# AWS EC2 Instance Type - Map
variable "instance_type_map" {
  description = "AWS EC2 Instance Type"
  type        = map(string)
  default = {
    "dev"  = "t2.small"
    "test" = "t2.micro"
    "prod" = "large"
  }
}

# AWS EC2 Instance Type
variable "instance_type" {
  description = "AWS EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Key Pair that to be allocated to ec2 instance"
  type        = string
  default     = "terraform-key"
}