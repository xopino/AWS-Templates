resource "aws_s3_bucket" "my-s3-bucket-from-tf" {
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
