provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "8f6b8d8d-c226-4af7-91e3-6ad00c09e026"
    git_commit           = "dfd8b085c71dde2dc8dee2938f6d610a9b6b1251"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-06-11 16:33:35"
    git_last_modified_by = "62144201+acanbym@users.noreply.github.com"
    git_modifiers        = "62144201+acanbym"
    git_org              = "acanbym"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
