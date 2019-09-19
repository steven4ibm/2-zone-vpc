
variable "ibmcloud_api_key" {
  description = "The [IBM Cloud API key](https://cloud.ibm.com/docs/iam?topic=iam-userapikey) with the appropriate permissions to Schematics and VPC infrastructure."
}

variable "region" {
  description = "The region to create your two VPCs in, such as `us-south`. The VPCs are created in two separate zones within the same region. To get a list of all regions, run `ic is regions`."
  default = "us-south"
}


provider "ibm" {
  ibmcloud_api_key = "${var.ibmcloud_api_key}"
  generation = "1"
}
