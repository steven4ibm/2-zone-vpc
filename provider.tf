provider "ibm" {
  ibmcloud_timeout = 300
  generation = "2"
  region = "${var.region}"
}
