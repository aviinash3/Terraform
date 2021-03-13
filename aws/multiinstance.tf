provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""

}
resource "aws_instance" "AWSEC2Instance" {
  ami = "ami-0a9d27a9f4f5c0efc"
  instance_type   = "t2.micro"
  count = "2"
#  security_groups = ["default"]
#  key_name        = "ubuntu-1"
  tags = {
    Name = "Redhat linux"
  }

}