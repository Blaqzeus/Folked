resource "aws_instance" ec2"{
            ami= "ami-0f9fc25dd2506cf6d"
            instance_type= "t2.micro"
            security_groups= 
            [aws_security_group.Jenkins-sg.name]
            key_name=  "zeuskeypair"
            }         
 
 resource  "aws_default_vpc" "main"{
           tags = { Name = "main"}
           }

resource "aws_ebs-volume" "vol" {
          availability_zone = "us-east-1"
          size              =  8
          tags = {key_name  =  "ec2instance"}
          }



