
variable "ibmcloud_api_key" {
  description = "Your IBM Cloud API key."
}

variable "region" {
  description = "Your region to deploy."
  default = "us-east"
}


provider "ibm" {
  ibmcloud_api_key = "${var.ibmcloud_api_key}"
  generation = "1"
}
