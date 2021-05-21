## Azure Networking

### [1.6.0 Concepts of Virtual Network & Subnet:](https://github.com/hmsvigle/Azure/tree/Az-303-My-Notes-V2/AZ-303/Edureka/Day-02#azure-virtual-network-azure-vn)
  * Public IP Address: Communication to Internet
  * Private IP Address: Communication between Virtual Networks / Subnets / with-in an onprem nw
  * There are 2 SKUs: 
    * Basic: 
      * Static / Dynamic IP Address
      * NSG (*Optional*) - restrict public ip
    * Standard SKU: 
      *  Static IP Address
      *  NSG is required to restrict traffic
      *  ZRS is Default

### IP Addressing:
  * IP has 10.0.0.5 --> each bit consists of 8 bits i.e [0000 1010] . [0000 0000] . [0000 0000] . [0000 0101] 
  * CIDR = `10.0.0.0/24` --> 24 bits (1st three bits) are fixed & remaining (32-24) 8 bits can be adjusted to get the IPs, which can be assigned to VMS
  * so we can change the last bit & get the IPs, which can be assigned to VMs. i.e 10.0.0.[0000 0000] - 10.0.0.[1111 1111] --> 256 IPs 
  * If we create a subnet i.e 10.0.0.0/16 -> 2 bits are fixed & remaining 2 bits can be assigned to Hostnames. 
    * We define subnets i.e 10.0.1.0/24  | 10.0.2.0/24  | . . . . . | 10.0.255.0/24
    * Each subnet can again have 256 IPs.
  * Azure by default blocks 5 IPs from every subnet for its own usage. so total 251 IPs are available.
  * > Note: If no VMs assigned to a subnet, then we can update the address space, if already some vms asigned, then we cant update subnet ip address.
  * **NIC:** - It assigns private / public IP to VM. We can have 2 NICs assigned to a VM; which can have only public & private IPs assigned to VM, so that public Ip can be internet facing & private IP can be used for internal communications.
  * **NSG:** NSG can be `attached at Subnet/NIC layer.` 
    * create NSG (select vnet) --> go to subnets --> Associate with Vnet & subnet --> Inbound/Outbound Security Rules --> Add rule for traffic.
  * **Application Security Group:** ASG can be assigned to VM(s) running the application. In NSG of DB-Vms, we can add rule for ASG only.
    * VNET -> { App-VM (ASG) ---> DB-VM (NSG) } ==> In NSG(db), add rule to allow traffic only from ASG(app), instead of adding Private IPs of all VMs(App). 

### Usecase:

<img src="https://user-images.githubusercontent.com/24938159/118947772-4aab8900-b975-11eb-9edd-da69545f81ad.png" width="600">

* Deploy Vnet [10.0.0.0/16]
* Deploy subnets :- SubnetA [10.0.1.0/24] &  jumpSubnetA [10.0.2.0/24]
* Deploy jumpServer VM:
  * Give Public IP
  * Assign to jumpSubnetA
  * Networking --> Add inbound Rule (1. Deny all from virtualnetwork & 2. Allow only Personal IP to specific port)
* Deploy DemoVM to SubnetA
  * Disable Public IP
  * Networking --> Add inbound Rule (1. Deny all from virtualnetwork & 2. Allow only Private IP of jumpserver to specific port)
     
### Service-EndPoints:

* Normally when we try to access any Azure service (i.e Public IP of service) from a VM (private IP from a subnet of a Vnet), The private IP of VM translates into Public IP & connect to azure service public ip. 
* So there is a transition from private network to Public internet & then back to establish connection. Its a Risky step. 
* Hence, VNet `Service Endpoint` provides a secure and direct connectivity to Azure services. Here an optimized Route over Azure backbone Network opens up, which enables identies of the Azure service & subnet of VM. 
  * We can add an Outbound rule in NSG of VM to allow connection to azure service (eg- storage ac). --> Vm's Private IP --> Public IP --> [*Possibility of glitch*] --> Azure Service 
* Secure way to strictly enable direct route between VM & add Azure service is - Service-Endpoint.
  * Enable Service-endpoint at VM (Vnet)
  

  <img src="https://user-images.githubusercontent.com/24938159/119098079-15657080-ba33-11eb-980f-0563e410664d.png" width="600">
  
  * Now add the Vnet to your storage account.
  
  
  <img src="https://user-images.githubusercontent.com/24938159/119098388-670dfb00-ba33-11eb-8ef2-b03d2102365f.png" width="600">

  * **Limitations**: Storage AC & Vnet, where application-VM is running, should be deployed in the same `Region`.
  
### Service-Endpoint-Policy: 

  * What if there are multiple storage accounts in the same resourcegroup. And somebody is trying to exfiltrate data to another storage-ac as well. 
  * To restrict data exfiltration, we define service-endpoint-Policy to define what all stg-acc are allowed for the connection.

  <img src="https://user-images.githubusercontent.com/24938159/119099840-f071fd00-ba34-11eb-8b57-f7ebe74c74e9.png" width="600">
  
### Private-Endpoint:

  * Its like connecting to private IP of storage account in the same subnet. 
  * With private end-point, the entire storage ac is assigned a nic (private ip from the subnet of app-VM). 
  * Storage-Acc --> networking --> Private end-point --> Add --> select RG --> service(blob/...) --> vnet (where vm is deployed) --> Done
  
  <img src="https://user-images.githubusercontent.com/24938159/119117547-f5d84300-ba46-11eb-91d9-af4fcbbceb21.png" width="600">
  

  <img src="https://user-images.githubusercontent.com/24938159/119118186-99295800-ba47-11eb-8271-64361e64e215.png" width="600">

  <img src="https://user-images.githubusercontent.com/24938159/119118531-ead1e280-ba47-11eb-970a-2b0ef2496125.png" width="600">
  
  * **Difference between Service-Endpoint & Private-Endpoint:**
  
  <img src="https://user-images.githubusercontent.com/24938159/119116413-d7be1300-ba45-11eb-99cd-9ab92e95f7d2.png" width="600">

  
  





