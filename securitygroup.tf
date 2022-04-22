resource "aws_default_security_group" "Jenkins-sg" {
name= Jenkins-sg
description="Allow TCP inbound Traffic"  

  
  ingress {
    from_port = 8080
    to_port   = 8080
    cidr_blocks = ["0.0.0.0/0"]
  }

  
ingress {
    from_port = 22
    to_port   = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

tags = {
  "Name"      = "Jenkins-sg"
  "Terraform" = "true"
  }

}
