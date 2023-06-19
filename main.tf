terraform {
  backend "s3" {
   bucket = "tf-tuts-state-10000000"
   key    = "state"
   region = "ap-south-1"
   #access_key = "AKIAR2ZHFOWGLLNFLANL"
   #secret_key = "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"
 }
}
provider "aws" { 
  region     = "ap-south-1" 
}

resource "aws_instance" "web" { 
  ami           = "ami-02eb7a4783e7e9317"
  instance_type = "t2.micro" 
  #name = Iac-demo
  count = 1
  tags = { 
    name = "terraform-ec2" 
  } 
 }


#resource "aws_instance" "my_vm" {
# ami           = var.ami //Ubuntu AMI
# instance_type = var.instance_type

# tags = {
 #  Name = var.name_tag,
 #}
#}
