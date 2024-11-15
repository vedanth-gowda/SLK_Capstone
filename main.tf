provider "aws" {
  region = "us-east-1"  # Change to the region that is required by your setup
}

resource "aws_instance" "slkec_2" {
  ami           = "ami-012967cc5a8c9f891"
  instance_type = "t2.micro"

  tags = {
    Name = "aws_capstone"
  }
}

resource "aws_s3_bucket" "slkbucket" {
  bucket = "slkrefcap1"
  acl    = "private"
}
