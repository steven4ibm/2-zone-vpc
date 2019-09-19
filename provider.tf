
variable "ibmcloud_api_key" {
  description = "Your IBM Cloud API key. If you need to create one, go to the [IBM Cloud API keys page](https://cloud.ibm.com/iam/apikeys)."
}

variable "region" {
  description = "Region for deploying VPC, for example, us-east. To get a list of all regions, run the `ic is regions` command."
  default = "us-east"
}


provider "ibm" {
  ibmcloud_api_key = "${var.ibmcloud_api_key}"
  generation = "1"
}
