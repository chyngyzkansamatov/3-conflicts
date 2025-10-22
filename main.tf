resource "aws_instance" "web" {
  ami           = "ami-12345"
  instance_type = "t2.large" # you are changing this. This is NOT a conflict! It's a clean change.  

  tags = {
    Name = "WebServer"
    Owner = "DevOps Team" # you are changing this  
  }
}
