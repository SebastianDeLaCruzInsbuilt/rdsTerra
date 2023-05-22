provider "aws" {
  region = var.aws_region
}
resource "aws_s3_bucket" "codepipeline_artifacts" {
  bucket = "pruebastestpipeln898814318448"
  #acl    = "private"
} 

