terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.13.4"
}

provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"
  s3_force_path_style         = false
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    apigateway     = "http://aws.jplab.local:4566"
    apigatewayv2   = "http://aws.jplab.local:4566"
    cloudformation = "http://aws.jplab.local:4566"
    cloudwatch     = "http://aws.jplab.local:4566"
    dynamodb       = "http://aws.jplab.local:4566"
    ec2            = "http://aws.jplab.local:4566"
    es             = "http://aws.jplab.local:4566"
    elasticache    = "http://aws.jplab.local:4566"
    firehose       = "http://aws.jplab.local:4566"
    iam            = "http://aws.jplab.local:4566"
    kinesis        = "http://aws.jplab.local:4566"
    lambda         = "http://aws.jplab.local:4566"
    rds            = "http://aws.jplab.local:4566"
    redshift       = "http://aws.jplab.local:4566"
    route53        = "http://aws.jplab.local:4566"
    s3             = "http://s3.aws.jplab.local.localstack.cloud:4566"
    secretsmanager = "http://aws.jplab.local:4566"
    ses            = "http://aws.jplab.local:4566"
    sns            = "http://aws.jplab.local:4566"
    sqs            = "http://aws.jplab.local:4566"
    ssm            = "http://aws.jplab.local:4566"
    stepfunctions  = "http://aws.jplab.local:4566"
    sts            = "http://aws.jplab.local:4566"
  }
}

resource "aws_instance" "myserver" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  count = 100

  tags = {
    Name = "Server${count.index + 1}",
  }
}