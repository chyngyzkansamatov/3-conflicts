resource "aws_instance" "web" {
  ami           = "ami-12345"
  instance_type = "t2.micro"

  tags = {
    Name = "WebServer"
    Environment = "Development" # ← Added this
  }
}

resource "aws_s3_bucket" "data" { # ← Added this
  bucket = "my-data-bucket"
}
