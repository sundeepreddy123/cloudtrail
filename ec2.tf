resource "aws_instance" "app_server" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
}
