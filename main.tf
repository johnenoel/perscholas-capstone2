 provider "aws" {
  region     = "us-east-2"
 
}

resource "aws_instance" "jnoel_server" {
  ami           = "ami-0661cd3308ec33aaa"
  instance_type = "t2.medium"
  key_name = "aws_jn_keypair"
  tags = {
    Name = "k8s-minikube"
  }
}

resource "aws_security_group" "my_security_group" {
  name        =  "jn_security_group"
  #default     =  "jn-jenkins-security-group"

  description = "security group for Ec2 instance"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 # outbound from jenkis server
  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #tags= {
    #Name = mamoun_security_group
  #}
}
