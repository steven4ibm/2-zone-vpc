
variable "ssh_public_key" {
}

variable "ssh_key_name" {
  default = "VPC_ssh_key"
}

variable "num_vms_per_VPC" {
  default = 1
}

variable "image" {
  default = "7eb4e35b-4257-56f8-d7da-326d85452591"
}

variable "profile" {
  default = "b-2x8"
}
