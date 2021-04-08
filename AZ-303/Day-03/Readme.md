# Virtual Networking 


### Private IP addresses:
* Below are the Private IP ranges specified by Microsoft. Rest all are called Public IPs.
  * `10.0.0.0`/`8` ------------> CIDR Block (classless inter domain routing)
  * `172.16.0.0`/`12` ---------> CIDR Block (classless inter domain routing)
  * `192.168.0.0`/`16` --------> CIDR Block (classless inter domain routing)
  * `/8` `/12` `/16`  ---------> Subnet masks
* We must not having overlaping CIDR blocks. Else Azure wont allow you to connect to the IPs.
#### How to Connect to VMs
* From internet --> a `Private` cluster : we need Private IP (non-routable address)
  * Thats why in your VNET, You need private ip addresses.
* From internet --> a `Public` cluster, we need Public IP (routable address)

* Create VNET --> 
* Azure has blocked 5 Addressed for itself in every Subnet. [Doc](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-networks-faq#what-address-ranges-can-i-use-in-my-vnets)
  * e.g: In CIDR block  SN1: 192.168.0.0/24 ---> 256 - 5 = 251 (Available)
    *   192.168.0.0 --> (Network Address/Subnet ID)
    *   192.168.0.255 --> (Broadcast Address)
    *   192.168.0.1 --> Router IP
    *   192.168.0.2 --> DHCP
    *   192.168.0.3 --> Future Use
    *   192.168.0.4 -- 192.168.0.254  --> Available for Use



