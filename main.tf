provider "aws" {
                access_key = var.key
                secret_key = var.skey
                region = "us-east-1"
}

module "aws_instance_t2"  {
     source="terraform-aws-modules/ec2-instance/aws"
     version="2.16.0"
     name = "Udacity T2"
     count = "4"
    ami                    = var.ami
    instance_type          = var.type[0]
    vpc_security_group_ids = var.sgroup
    subnet_id              = var.public_subnet[0]
  tags = {
    Terraform   = "true"
    Environment = "T2"
}

}

module "aws_instance_m4"  {
     source="terraform-aws-modules/ec2-instance/aws"
     version="2.16.0"
     name = "Udacity M4"
     count = "2"
    ami                    = var.ami
    instance_type          = var.type[1]
    vpc_security_group_ids = var.sgroup
    subnet_id              = var.public_subnet[1]
  tags = {
    Terraform   = "true"
    Environment = "M4"
}

}