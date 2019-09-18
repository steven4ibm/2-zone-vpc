
variable "ssh_public_key" {
  default = ""
  description = "Your public key to access the virtual machine. Your public key is saved to a `id_rsa.pub` file in the `.ssh` subdirectory of your home directory."
}

variable "ssh_key_name" {
  default = "VPC_ssh_key"
  description = "The name of the SSH key."
}

variable "num_vms_per_VPC" {
  default = 1
  description = "Number of virtual machines to create per virtual private cloud."
}

variable "image" {
  default = "7eb4e35b-4257-56f8-d7da-326d85452591"
  description = "Virtual machine image identifier"
}

variable "profile" {
  default = "b-2x8"
  description = "Virtual machine CPU profile"
}
