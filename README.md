# Two Virtual Private Cloud with transit gateway

With this template, you can use IBM Cloud Schematics to create two virtual private clouds (VPCs) link by a transit gateway in your IBM Cloud account. Schematics uses [Terraform](https://www.terraform.io/) as the infrastructure-as-code engine. With this template, you can create and manage infrastructure as a single unit as follows. For more information about how to use this template, see the [IBM Cloud Schematics documentation](https://cloud.ibm.com/docs/schematics).

**Included**:
* 2 [virtual private cloud](https://cloud.ibm.com/docs/vpc-on-classic?topic=vpc-on-classic-getting-started) instances, in 3 zones.
* 1 [transit gateway](https://cloud.ibm.com/docs/vpc-on-classic-vsi?topic=vpc-on-classic-vsi-getting-started) attached to both VPC.

## Dependencies

Before you can apply the template in IBM Cloud, complete the following steps.

1.  Make sure that you have the following permissions in IBM Cloud Identity and Access Management:
    * **Manager** service access role for IBM Cloud Schematics
    * **Operator** platform role for VPC Infrastructure
2.  Download the [`ibmcloud` command line interface (CLI) tool](https://cloud.ibm.com/docs/cli/reference/ibmcloud?topic=cloud-cli-install-ibmcloud-cli).
3.  Install the `ibmcloud terraform` and `ibmcloud is` CLI plug-ins for Schematics and VPC infrastructure. **Tip**: To update your current plug-ins, run `ibmcloud plugin update`.
    *  `ibmcloud plugin install schematics`
    *  `ibmcloud plugin install vpc-infrastructure`
4.  [Create or use an existing SSH key for VPC virtual servers](https://cloud.ibm.com/docs/vpc-on-classic-vsi?topic=vpc-on-classic-vsi-ssh-keys).

## Configuring your deployment values

When you select the [`2-zone-vpc`template](https://cloud.ibm.com/catalog/content/2-zone-vpc) from the IBM Cloud catalog, you set up your deployment variables from the **Create** page. When you apply the template, IBM Cloud Schematics provisions the resources according to the values that you specify for these variables.

### Optional values
Before you apply your template, you can customize the following default variable values.

|Variable Name|Description|Default Value|
|-------------|-----------|-------------|
|`region`|The region to create your two VPCs in, such as `us-south`. The VPCs are created in two separate zones within the same region. To get a list of all regions, run `ibmcloud is regions`.|`eu-de`|


## Outputs
After you apply the template your VPC resources are successfully provisioned in IBM Cloud, you can review information such as VPC identifiers in the Schematics log files, in the `Terraform SHOW` section.
