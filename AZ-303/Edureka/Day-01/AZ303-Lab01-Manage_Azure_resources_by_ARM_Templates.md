
# Manage Azure resources by Using ARM Templates

## Powershell-ISE:

```sh

Install-Module -Name Az -Scope CurrentUser
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
Import-Module -name Az 

* Ensure Right Subscription: 
  * `Login-AzAccount` : Takes to Azure Browser for login manually. Then displays the Login Account
  * Select-AzSubscrption -SubscriptionId `id_of_subs`
  * 
    
```

## Lab Scenario:

Now that you explored the basic Azure administration capabilities associated with provisioning resources and organizing them based on resource groups by using the Azure portal, you need to carry out the equivalent task by using Azure Resource Manager templates.

#### Objectives

* Task 1: Create Resource Group from Portal/Powershell. 
  * `$ New-AzResourceGroup -Name hp-az104-03a-rg1 -Location 'EAST US'`

* Task 2: Create a Managed Disk to that RG from Portal. 
   * In Azure Portal, create resource --> Managed Disk (`hp-manageddisk-01`) --> RG (`hp-az104-03a-rg1`) --> `Standard HDD` -> `4GB` -> "No tags" -> Create

* Task 3: Review an ARM template for deployment of an Azure managed disk  
  * In Azure Portal, go to RG: `hp-az104-03a-rg1` --> Deployments --> Select the deployment name --> View the template --> Download the template 
  * Extract the zip file & review the template & parameter files.
  
* Task 4: Create an Azure managed disk by using an ARM template
  * Add Resource --> Template deployment --> upload template file --> Edit parameters --> Upload parameter file
  > Review properly the files & fix the issues, if any.

