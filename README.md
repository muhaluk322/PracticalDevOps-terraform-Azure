# Terraform Azure task

## Task description:

You should develop a Terraform code in `main.tf` that implements predefined variables used to deploy infrastructure on Azure.

Your task is to review the variables and their descriptions, and deploy designed infrastructure using additional needed resources.

Terraform provider `hashicorp/azurerm`

The variables defined in the code (`variables.tf`) are as follows:

| **Variable**  | **Description** |
| --- | --- |
| `resource_group_location` | Name of your resource group location. For example value is `eastus` |
| `resource_group_name` | Name of the resource group  |
| `resource_group_name_prefix` | Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription.`  |
| `computer_name`  | Name of the computer  |
| `user_name`  | Name of the user. The default value is `azureuser` |
| `storage_account_type`  | Default storage account type to deploy infrastructure |
| `azurerm_vm_size`  | The availability vm size where the instance will be deployed The default value is `Standard_B1ls`  |
| `vnet_range`  | The CIDR block for the custom vnet. The default value is `10.2.0.0/16` |
| `subnet_range`  | The CIDR block for the custom subnet. The default value is `10.2.0.0/24` |
| `source_image_reference_publisher`  | The availability os image publisher where the instance will be deployed. The default value is `Canonical`  |
| `source_image_reference_offer`  | The availability os image offer where the instance will be deployed. The default value is `0001-com-ubuntu-server-jammy`  |
| `source_image_reference_sku`  | The availability os image sku where the instance will be deployed. The default value is `22_04-lts-gen2`  |
| `source_image_reference_version`  | The availability os image version where the instance will be deployed. The default value is `latest`  |
| `image_project`  | The project of the VM image for the instance to be launched. The default value is `ubuntu-os-cloud`  |
| `azurerm_virtual_network_name`  | Name of your virtual network. For example value is `myVnet`  |
| `azurerm_subnet_name`  | Name of your subnetwork in virtual network. For example value is `mySubnet`  |
| `azurerm_public_ip`  | Public ip of your virtual network. For example value is `myPublicIP`  |


> Note: You will need to provide a startup script to install an Apache2 web server.

Also you should develop respective `ouputs.tf` with following information about created resources: 


```terraform
output "resource_group_name" {put your code here}

output "azure_vm_name" {put your code here}

output "azure_vm_location" {put your code here}

output "vm_size" {put your code here}

output "azure_os_disk_name" {put your code here}

output "public_ip_address" {put your code here}

output "tls_private_key" {put your code here}
```

> Note: The outputs must use `Azure Virtual machines` resouce attributes not the variables.

After your code will be developed you need to make several steps to complete this task: 


1. Install Terraform (or it could be already installed)

2. Run terraform init, plan and finally apply in your directory with your terrafom files.

3. Be sure, that you have properly configured Azure credentials, beacause it is required.

4. After successfully completing you should run terraform output and save its result as a file `result`. 

## Short overview

This Terraform code defines infrastructure resources for a Virtual machines instance with a public subnet and a firewall for the instance.

The provider for the code is Azure, and it takes the region information from a variable defined in a `variables.tf` file.

The code defines a viertual network  resource using the `azurerm_virtual_network` block and sets its name, address_space, location and resource_group_name. 

It also defines a subnet using the `azurerm_subnet` block, which has a CIDR block in address_prefixes, resource_group_name, a virtual_network_name and a name that are set from variables.

Finally, an Virtual machines instance resource is created with an image found through a data source using image family and image project from variables, instance type, network, and and other variables.

A startup script to install and start an Apache2 server must be provided. 

A security group is defined for the instance with dynamic ingress rules for specified ports and a default egress rule allowing all traffic.

Overall, this Terraform code provisions a virtual network with a subnet and a Virtual machines instance with a firewall that allows incoming traffic on specified ports.
