# Input Variables

#AWS Region
variable "aws_region" {
  description = "AWS Region in which EC2 Instance to be created"
  type        = string
  default     = "us-east-1"
}

#AWS EC2 Instance Type
variable "instance_type" {
  description = "AWS EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

#AWS Instance Key_Pair
variable "instance_keypair" {
  description = "AWS EC2 Key Pair that whih to be associated with ec2 instance"
  type        = string
  default     = "terraform-key"
}