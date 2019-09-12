
variable "ibmcloud_api_key" {
  description = "Your IBM Cloud API key."
}

provider "ibm" {
  ibmcloud_api_key = "${var.ibmcloud_api_key}"
  generation = "1"
}
