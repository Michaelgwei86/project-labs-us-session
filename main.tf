
#Creating an EC2 instance in the Dev Environment

resource "aws_instance" "dev-ec2" {
    ami = var.ami_id
    instance_type = var.dev_instance_type
    subnet_id = var.subnet_id
    vpc_security_group_ids = var.security_group_ids
    key_name = var.key_pair

    tags = {
        Name = "dev-ec2"
    }
}

#Creating an EC2 instance in the prod Environment

resource "aws_instance" "prod-ec2" {
    ami = var.ami_id
    instance_type = var.prod_instance_type
    subnet_id = var.subnet_id
    vpc_security_group_ids = var.security_group_ids
    key_name = var.key_pair

    tags = {
        Name = "prod-ec2"
    }
}

#Creating an EC2 instance in the stage Environment

resource "aws_instance" "stage-ec2" {
    ami = var.ami_id
    instance_type = var.stage_instance_type
    subnet_id = var.subnet_id
    vpc_security_group_ids = var.security_group_ids
    key_name = var.key_pair

    tags = {
        Name = "prod-ec2"
    }
}