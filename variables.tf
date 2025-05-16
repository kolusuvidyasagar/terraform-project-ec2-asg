variable "region" {}
variable "project_name" {}
variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "vpc_id" {}
variable "subnet_ids" {
  type = list(string)
}
variable "min_size" {}
variable "max_size" {}
variable "desired_capacity" {}
