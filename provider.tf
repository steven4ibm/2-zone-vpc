

variable "region" {
  description = "Your region to deploy."
  default = "us-east"
}


provider "ibm" {
  generation = "1"
}
