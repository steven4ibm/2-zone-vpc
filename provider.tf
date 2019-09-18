
variable "ibmcloud_api_key" {
  description = "Your IBM Cloud API key. If you need to create one, go to https://cloud.ibm.com/iam/apikeys."
}

variable "region" {
  description = "Region to deploy VPC. To get a list of all regions, run the ic is regions command."
  default = "us-east"
}


provider "ibm" {
  ibmcloud_api_key = "${var.ibmcloud_api_key}"
  generation = "1"
}
