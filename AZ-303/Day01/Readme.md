# [Day-01]()

* Azure has more than 55+ regions where you can deploy your resources.
* Every region = atleast 1 + datacenters. These datacenters are called as availability zones.
* Azure Provides all IaaS, PaaS, SaaS Platforms/Services

## Azure AD Subscription:

### What is Azure AD?
* Azure AD is a Directory where you can create/sync users and allow them to access different resources.
* For every individual subscription, there will be a separate azure ad tenant created by default.
* One AD Forest can be synchronized to only 1 AD Tenant. 
  * To Sync multiple Subscriptions to AD Forest, `2/more Subscriptions can be synced to Single AD Tenant`. 
  * Then that AD Tenant can be synched to AD forest.
  * Normaly Organizations would be having multiple subscriptions. 
  
### Why multiple subscriptions? 
* To segregate workloads like: 
  1. PROD subscriptions
  2. QA subscriptions
  3. STAGE subscriptions
  4. DEV subscriptions
  5. MANAGEMENT WORKLOAD subscriptions
  6. Training Subscription

### How to move azure subscriptions between azure ad tenants?
  1. Contact MS
  2. EA (Enterprise agreeement): `ea.azure.com`


## Resources:
	Logical container that allows you to group resources all together. 
	Anything you create on azure platform is called as a resource ex. VM, DB, Storage account.

* Any resource you want to create in azure, you need 2 things:
	1. Subscription
	2. Resource group
* The `Location of RG` can be and `Location of Resources` within that resource group can be different.
* Once we create the RG, we Cant update the `Location` / `Domain Name of AD tenant`. 
* But we can assign `Alternative Domain name to Tenant`
* 

> **Ref_Links:**
* [Topology](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/plan-connect-topologies)
* For Certification, Awareness about all `Powershell`/`Az-cli`/`ARM template` is necessary.  

### How to create the resources/what are the ways I can create my resources?

1. Portal (portal.azure.com): GUI
2. PowerShell (Install Az module) on local machine
3. ARM Template: JSON template. IAAC (Infrastructure as a code):- `Multiple Resources at once`
4. Azure cloud shell 
   * PowerShell: if you are windows guy and comfortable with using Powershell. (By default you have Az module installed)
   * Bash: If you are a linux guy and comfortable with linux bash shell
5. SDKs


### Powershell

1. Powershell
2. Powershell ISE (Intellisense inbuilt into it)

### Lab:

* [Lab01](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_03a-Manage_Azure_Resources_by_Using_the_Azure_Portal.md)
* [Lab02](./AZ303-Lab01-Manage_Azure_resources_by_ARM_Templates.md)
* [Lab03](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_03c-Manage_Azure_Resources_by_Using_Azure_PowerShell.md)
* [Lab04](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_03d-Manage_Azure_Resources_by_Using_Azure_CLI.md)








