resource "aws_s3_bucket" "website" {
  bucket = var.bucket_name
  acl = "private"
  force_destroy = true

  website {
    index_document = var.index_page
    error_document = var.error_page
  }

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowReadFromAll",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": [
        "s3:PutObjectAcl",
        "s3:PutObject",
        "s3:ListBucket",
        "s3:GetObject"
      ],
      "Resource": [
        "arn:aws:s3:::${var.bucket_name}/*",
        "arn:aws:s3:::${var.bucket_name}"
      ]
    }
  ]
}
EOF
}

resource "aws_s3_bucket_object" "index" {
  bucket  = aws_s3_bucket.website.id
  key     = var.index_page
  content =  <<EOF
You've reached the ${var.bucket_name} index page
EOF
  content_type = "text/plain"
}

resource "aws_s3_bucket_object" "error" {
  bucket  = aws_s3_bucket.website.id
  key     = var.error_page
}

resource "aws_s3_bucket_versioning" "enable_versioning" {
  bucket = aws_s3_bucket.website.id
  versioning_configuration {
    status = "Enabled"
  }
}