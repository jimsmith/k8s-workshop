variable "users" { 
  type = "list"
  default = ["user:example1@tld.com","user:example2@tld.com"]
}

variable "project" {
 default = "us-k8s-wokshop"
}

variable "iam_role" {}
