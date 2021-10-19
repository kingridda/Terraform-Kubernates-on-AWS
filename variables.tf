variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "private_key_path" {}
variable "key_name" {}
variable "region" {
  default = "us-east-2"
}
variable "network_address_space" {
  default = "10.1.0.0/16"
}
variable "subnet1_address_space" {
  default = "10.1.0.0/24"
}
variable "subnet2_address_space" {
  default = "10.1.1.0/24"
}
variable "subnet3_address_space" {
  default = "10.1.2.0/24"
}
variable "subnet4_address_space" {
  default = "10.1.3.0/24"
}
variable "subnet5_address_space" {
  default = "10.1.4.0/24"
}
variable "subnet6_address_space" {
  default = "10.1.5.0/24"
}

variable "billing_code_tag" {}
variable "environment_tag" {}



variable "cluster_name" {}
