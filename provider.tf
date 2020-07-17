variable "region" {
  description = "The region to create your two VPCs in, such as `eu-de`. To get a list of all regions, run `ibmcloud is regions`."
  default = "eu-de"
}


provider "ibm" {
  ibmcloud_timeout = 300
  generation = "1"
}
