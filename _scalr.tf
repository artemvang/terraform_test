terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

resource "random_id" "server" {
  byte_length = 8
}
