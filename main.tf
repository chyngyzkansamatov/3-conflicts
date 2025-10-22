resource "aws_instance" "web" {
  ami           = "ami-12345"
  instance_type = "t2.large"       # Changed instance type
  monitoring    = true              # Added monitoring
  tags = {
    Name        = "WebServer"
    Environment = "Production"      # Different value for Environment
    Compliance  = "PCI-DSS"
    Team        = "DevOps"
  }
}

resource "aws_cloudwatch_alarm" "cpu" {   # Different resource
  alarm_name = "high-cpu-alarm"
  metric_name = "CPUUtilization"
}
