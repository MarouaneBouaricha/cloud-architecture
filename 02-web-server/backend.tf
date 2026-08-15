# ============================================================================
# Lab 02: Remote Backend Configuration
# Uses the S3 bucket and DynamoDB table created in Lab 00
# ============================================================================

terraform {
  backend "s3" {
    bucket         = "aws-lab-dev-tf-state-xxxxx"
    key            = "lab-02-web-server/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "aws-lab-dev-terraform-lock"
    encrypt        = true
  }
}