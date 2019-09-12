# 2-Zone VPC Template

An IBM Cloud Schematics template to provision two virtual private clouds (VPCs) each in a different zone. A use specified number of virtual machines is created in each VPC and loaded with NGINX. _NOTE: this template does not install load balancers within the VPCs nor a global load balancer for traffic management across VPCs_. Schematics uses [Terraform](https://www.terraform.io/) as the infrastructure as code engine. With this template, you can provision and manage infrastructure as a single unit.

See the IBM Cloud docs for more information about [Schematics](https://cloud.ibm.com/docs/schematics).

## Costs

This sample uses chargable services and **will** incur costs for the time the services are deployed. Execution of `terraform destroy` will result in deletion of all resources.

## Dependencies

- User has IAM security rights to create and configure VPCs and VMs.

## Identity &amp; Access Management (IAM) Permissions 

The following variables need to be set before use

* `ibmcloud_api_key` is an IBM Cloud API Key. If you don't have one already, go to https://cloud.ibm.com/iam/#/apikeys and create a new key.

### Variables

|Variable Name|Description|Default Value|
|-------------|-----------|-------------|
|zone1|deployment zone for VPC 1|us-south-1|
|zone2|deployment zone for VPC 2|us-south-2|
|ssh_public_key|public SSH key||
|ssh_key_name|name of SSH key|VPC_ssh_key|
|num_vms_per_VPC|number of VMs to create per VPC|1|
|image|VM image indentifier|7eb4e35b-4257-56f8-d7da-326d85452591|
|profile|VM CPU profile|b-2x8|


## Outputs

The log `Terraform SHOW` section lists all the IPs and indentifiers to access the VPCs.