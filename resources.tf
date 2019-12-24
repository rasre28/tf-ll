resource "aws_vpc" "environment-ex-one" {
cidr_block = "10.0.0.0/16"
enable_dns_hostnames = true
enable_dns_support = true
tags = {
  Name = "terraform-aws-vpc-ex-one"
  }
}

resource "aws_subnet" "subnet1" {
cidr_block = "${cidrsubnet(aws_vpc.environment-ex-one.cidr_block, 3, 2)}"
vpc_id = "${aws_vpc.environment-ex-one.id}"
availability_zone = "us-east-1a"
}
