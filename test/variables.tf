variable "tags" {
  policy = "cloud.tags"
  conditions = {
    cloud = "gce"
  }
}

variable "owner" {
  description = "Owner email before @"
}

variable "instance_name" {
  default = "tf-test-centos"
}
