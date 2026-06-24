variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "my_ip" {
  description = "Your public IP for SSH access"
  type        = string
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_name" {
  description = "Existing EC2 key pair name; empty to skip"
  type        = string
  default     = ""
}

variable "project" {
  type    = string
  default = "tf-assignment"
}