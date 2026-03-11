resource "aws_instance" "app_server" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
}


resource "aws_cloudwatch_log_group" "cloudtrail" {
  name = "cloudtrail-log-group"
  retention_in_days = 30
}
