terraform {
  backend "s3" {
    key    = "terraform/test"
    region = "ap-southeast-2"
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_s3_bucket" "test" {
  bucket = "elaheh-test-bucket"
}
