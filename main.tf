terraform {
  backend "s3" {
   bucket = "tf-tuts-state-10000000"
   key    = "state"
   region = "us-east-1"
 }
}
provider "aws" { 
  region     = "us-east-1" 
}

resource "aws_instance" "web" { 
  ami           = "ami-02eb7a4783e7e9317"
  instance_type = "t2.micro" 
  #name = Iac-demo
  count = 1
  tags = { 
    Name = "terraform-ec2-jenkins-demo" 
  } 
 }


#resource "aws_instance" "my_vm" {
# ami           = var.ami //Ubuntu AMI
# instance_type = var.instance_type

# tags = {
 #  Name = var.name_tag,
 #}
#}
