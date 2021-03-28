
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

* Task 1: Review an ARM template for deployment of an Azure managed disk
  ```sh
  # Create Managed Disk Resource:
  * In Azure Portal, create resource -> Managed Disk (hp-az104-03a-disk1) -> Craete new RG (hp-az104-03a-rg1 - EAST US) -> Standard HDD -> 4GB -> "No tags" -> Create
  * Now Go to RG: hp-az104-03a-rg1 -> Move -> Resource to another RG -> Select Disk(hp-az104-03a-disk1) -> Select Diff RG 
  ```
* Task 2: Create an Azure managed disk by using an ARM template
* Task 3: Review the ARM template-based deployment of the managed disk
