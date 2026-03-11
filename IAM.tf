resource "aws_iam_role" "cloudtrail_role" {
  name  =  "cloudtrail-role"

  assume_role_policy  =  jsonencode({
    version  =  "202-10-17"
    statement  = [{
      Effect  =  "Allow"
      Principal  = {
        Service  =  "cloudtrail.amazonaws.com"
      }
      Action  =  "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy" "cloudtrail_policy" {
  name = "cloudtrail-policy"
  role = aws_iam_role.cloudtrail_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Action = [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ]
      Resource = "*"
    }]
  })
}
