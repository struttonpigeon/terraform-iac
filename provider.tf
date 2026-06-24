terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.5"

  backend "s3" {
    bucket         = "upskillingredalpha67"  # same name as Step 1
    key            = "global/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "tf-assignment-lock"
    encrypt        = true
  }
}