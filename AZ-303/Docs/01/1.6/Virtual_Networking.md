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
