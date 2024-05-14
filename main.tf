# specify the required provider version to use
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0" 
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
#creating the lightsail instance
resource "aws_lightsail_instance" "lightsail_instance" {
  name          = "Utrains_devops"
  availability_zone = "us-east-1a"
  blueprint_id  = "centos_7_2009_01"
  bundle_id     = "nano_1_0"
  key_pair_name = "newkey"
  tags = {
    name = "utrains devops"
    env  = "dev"
  }
}
