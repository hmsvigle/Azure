# Azure AD Subscription 


AZ303
=========
Azure has more than 55+ regions where you can deploy your resources.

Every region = atleast 1 + datacenters. These datacenters are called as availability zones.

IaaS, PaaS, SaaS ---> AZURE

For every individual subscription, there will be a separate azure ad tenant created by default.

What is Azure AD?
Directory where you can create/sync users and allow them to access different resources.

Why multiple subscriptions?
1. PROD subscriptions
2. QA subscriptions
3. STAGE subscriptions
4. DEV subscriptions
5. MANAGEMENT WORKLOAD subscriptions

How to move azure subscriptions between azure ad tenants?
1. Contact MS
2. EA (Enterprise agreeement)
ea.azure.com


Resource
========
Anything you create on azure platform is called as a resource ex. VM, DB, Storage account.


Any resource you want to create in azure, you need 2 things:
1. Subscription
2. Resource group

Resource group: Logical container that allows you to group resources all together. 
===============
project1---> prjeusrg1 (Users1, user2, user3) ---> VM, DB, Storage acct
project2---> prjeusrg2 (User4, user4, user5) ---> VM, DB
project3
project4


The location of resource group can be anything and location of resource that you are creating within that resource group can be different.
===================

How to create the resources/what are the ways I can create my resources?
=========================================================================
1. Portal (portal.azure.com): GUI
2. PowerShell (Install Az module) on local machine
3. ARM Template: JSON template. IaaC (Infrastructure as a code)
4. Azure cloud shell 
	a. PowerShell: if you are windows guy and comfortable with using Powershell. By default you have Az module installed.
	b. Bash: If you are a linux guy and comfortable with linux bash shell
5. SDKs


Powershell

1. Powershell
2. Powershell ISE (Intellisense inbuilt into it)










