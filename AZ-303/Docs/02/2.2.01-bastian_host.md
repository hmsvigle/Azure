## [2.2.9 Bastion Host](https://docs.microsoft.com/en-us/azure/bastion/bastion-overview):

* Bastion Host works as jump server.
* For security purpose, only Jump server should be exposed to Internet. Then from jump server, connectivity to internal app-servers should be allowed though rules in NSG/ASG.
* In place of deploying a jumpserver in a separate subnet & configuring all routing policies, Azure provides a service i.e Bastion Host service.
  * Subnet name must be = `AzureBastionSubnet` { *Imp* }
  * Azure Bastion Host is a `Managed Service`
  * Azure Bastion Host will  be deployed per Virtual Network
  
 
<img src="https://user-images.githubusercontent.com/24938159/118917427-7e26ed00-b94e-11eb-8356-0fadbdba6d2f.png" width="600">

  * Create 2 subnets in the Vnet i.e `SubnetA` - For Application_VM & `AzureBastionSubnet` - For Bastion Host.
  * Deploy a VM in the subnet SubnetA for application.
  * Conect VM using `Bastion` --> It will ask for Bastion Host details to provide -> It creates a Bastion Host
  * Then if you try to connect to the App-VM after providing username & password, it takes to browser & connects to the server through bastian host.
