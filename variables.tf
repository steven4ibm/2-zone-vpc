
variable "ssh_public_key" {
  description = "The [public SSH key](https://cloud.ibm.com/docs/vpc-on-classic-vsi?topic=vpc-on-classic-vsi-ssh-keys) that you use to access your VPC virtual servers. The public key is saved to an `id_rsa.pub` file in the `.ssh` subdirectory of your home directory."
}

variable "ssh_key_name" {
  default = "VPC_ssh_key"
  description = "The name of the public SSH key."
}

variable "num_vms_per_VPC" {
  default = 1
  description = "The number of virtual servers to create in each VPC. The value should be non-zero, positive value."
}

variable "image" {
  default = "7eb4e35b-4257-56f8-d7da-326d85452591"
  description = "The ID of the image that represents the operating system that you want to install on your VPC virtual server. To list available images, run `ibmcloud is images`. The default image is for an `ubuntu-16.04-amd64` OS."
}

variable "profile" {
  default = "bc1-2x8"
  description = "The profile of compute CPU and memory resources that you want your VPC virtual servers to have. To list available profiles, run `ibmcloud is instance-profiles`."
}
