
variable "prod_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Production instance type"
}

variable "dev_instance_type" {
  type        = string
  default     = "t2.small"
  description = "Dev instance type"
}

variable "ami_id" {
  type        = string
  default     = "ami-0d442a425e2e0a743"
  description = "AMI used to create the instance"
}

variable "key_pair" {
  type        = string
  default     = "wawa-keypair"
  description = "Key pair used for SSH"
}

variable "security_group_ids" {
  type        = list(string)
  default     = ["sg-0c6ae4fc46f122f16"]
  description = "description"
}

variable "subnet_id" {
  type        = string
  default     = "subnet-0defe0e3bf26732a8"
  description = "Subnet used to create resources"
}
