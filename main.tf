resource "aws_instance" "web" {
  ami           = "ami-12345"
  instance_type = "t2.large" # you are changing this. This is NOT a conflict! It's a clean change.  

  tags = {
    Name = "WebServer"
    Environment = "Development" # ← Added this
  }
}

resource "aws_s3_bucket" "data" { # ← Added this
  bucket = "my-data-bucket"
}
