# 2-Zone VPC template

The 2-Zone VPC template is an IBM Cloud Schematics template that is used to create two virtual private clouds (VPCs), each in a different zone. A user-specified number of virtual machines (VMs) is created in each VPC and loaded with NGINX. Schematics uses [Terraform](https://www.terraform.io/) as the infrastructure-as-code engine. With this template, you can create and manage infrastructure as a single unit.

For more information about how to use this template, see the [IBM Cloud Schematics documentation](https://cloud.ibm.com/docs/schematics).

**Note**: This template doesn't install load balancers within the VPCs or a global load balancer for traffic management across VPCs.

## Costs

This sample uses chargeable services and you are charged for the time the services are deployed. Running the `terraform destroy` command deletes all resources.

## Dependencies

The user must have Identity and Access Management (IAM) access to create and configure VPCs and VMs.

## Configuring your deployment values

Set the following variable before you use the template: 

* `ibmcloud_api_key` is an IBM Cloud API key. Go to the [IBM Cloud API keys page](https://cloud.ibm.com/iam/apikeys) to create one.

You must also set the following deployment values on the Create page. You can enter customized values or accept the defaults.

|Variable Name|Description|Default Value|
|-------------|-----------|-------------|
|region|Region to deploy VPC|us-east|
|ssh_public_key|Your public key to access the virtual machine. Your public key is saved to a `id_rsa.pub` file in the `.ssh` subdirectory of your home directory.||
|ssh_key_name|Name of SSH key|VPC_ssh_key|
|num_vms_per_VPC|Number of VMs to create per VPC|1|
|image|VM image identifier|7eb4e35b-4257-56f8-d7da-326d85452591|
|profile|VM CPU profile|b-2x8|


## Outputs

The log section `Terraform SHOW` lists all the IPs and identifiers to access the VPCs.
