provider "aws" {
  access_key = "<access_key>"
  secret_key = "<secret_key>"
  token= "<token>"
  region = "${var.aws_region}"
}

variable "aws_region"  { default = "us-east-1" description = "The aws region to create the infra" }
variable "aws_amis"  { default = "ami-xyz" }
variable "instance_type"  { default = "t2.micro" description = "instance type" }
variable "subnet_id"  { default = "subnet-xyz" description = "my subnet" }
variable "key_name"  { default = "my-key" description = "AWS key-pair" }
variable "security_group"  { default = "sg-a1nfd6k"}
variable "iam_instance_profile"  { default = "my-instanceProfile-Default" }
variable "ebs_type"  { default = "gp2" description = "the type of ebs volume" }
variable "ebs_size"  { default = "40" description = "size of ebs volume" }
variable "ebs_az"  { default = "us-east-1a" description = "The availability zone of my ebs volume" }

