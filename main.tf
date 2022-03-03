terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_security_group" "secgrp" {
  name        = "tf-sg"
  description = "Web Security Group for HTTP"

  ingress {
    description = "All TCP traffic"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "All TCP traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "app_server" {
  ami               = "ami-08e4e35cccc6189f4"
  instance_type     = "t2.medium"
  key_name          = "aws_jn_keypair"
  security_groups = ["tf-sg"]

  tags = {
    Name = "k8s-minikube"
  }
}
