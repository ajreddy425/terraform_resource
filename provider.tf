provider "aws" {
  region = "us-east-1"
}


// FAQ 

terraform {
  backend "s3" {
    bucket         = "my-terraform-statefile-bucket-2403"
    key            = "terraformstate/secure/terraform.tfstate" // key can be any name // key is like a folder inside a bucket
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking-1"
  }
}



