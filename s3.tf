// create s3 bucket and enable life cycle hooks (FAQ)

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "my-terraform-s3-dmeo"

  # lifecycle_rule {
  #   id      = "quarterly_retention"
  #   prefix  = "quarterly/"
  #   enabled = true

  #   expiration {
  #     days = 92
  #   }
  # }

  tags = {
    Name        = "My_bucket_2303"
    Environment = "Dev"
  }
}


// life cycle rule

resource "aws_s3_bucket_lifecycle_configuration" "life_cycle_demo" {
  bucket = aws_s3_bucket.s3_bucket.id

  rule {
    id     = "rule-1"
    prefix = "quarterly/"
    # enabled = true

    expiration {
      days = 92
    }


    status = "Enabled"
  }
}