provider "aws"{
	access_key="AKIARH6HUPIOW3VOWV54"
	secret_key="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"
	region="us-east-1"
}

#EC2 instance
resource "aws_instance" "us-east-1" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
}
