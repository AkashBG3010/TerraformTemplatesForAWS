resource "aws_vpc" "main" {

  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr_block = "10.0.0.0/16"

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
