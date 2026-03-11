resource "aws_s3_bucket" "cloudtrail_logs" {
  bucket  =  "company-cloudtrail-logs"

  tags  =  {
    Name  =  "cloudtrail-logs"
  }
}

