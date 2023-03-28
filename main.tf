terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = "us-west-2"
  access_key = "AKIASYLQSRBQZZHK3BV7"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-095413544ce52437d"
  instance_type = "t2.micro"
  key_name      = "iac-alura"
  # user_data = <<-EOF
  #               #!/bin/bash
  #               cd /home/ubuntu
  #               echo "Feito com terraform" > index.html
  #               nohup busybox httpd -f -p 8080 &
  #               EOF
  tags = {
    Name = "Teste AWS"
  }
}
