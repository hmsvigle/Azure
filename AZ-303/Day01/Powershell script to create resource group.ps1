

Install-Module -Name Az -Scope CurrentUser


#Running Powershell is disabled on this system

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned


Import-Module -Name Az

Login-AzAccount

Select-AzSubscription -SubscriptionId d1be3007-4f5f-4696-87c0-d55ea40f1fc8

New-AzResourceGroup -Name rg2 -Location 'East US'

New-AzResourceGroup -Name rg3