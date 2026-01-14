terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
     random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
 
resource "random_id" "rand-id"{
    byte_length = 10
  
}
resource "aws_s3_bucket" "demo-bucket" {
    bucket = "tf-cloud-${random_id.rand-id.hex}"

}
