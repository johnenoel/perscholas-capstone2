variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     =  "aws_jn_keypair"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     =  "t2.medium"
}

variable "security_group" {
  description = "Name of security group"
  default     = "jn-jenkins-security-group"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "k8s-ec2-instance"
}

variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-048ff3da02834afdc" 
}
