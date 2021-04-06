# Virtual Networking 


### Private IP addresses:
* `10.0.0.0`/`8` ------------> CIDR Block (classless inter domain routing)
* `172.16.0.0`/`12` ---------> CIDR Block (classless inter domain routing)
* `192.168.0.0`/`16` --------> CIDR Block (classless inter domain routing)
* `/8` `/12` `/16`  ---------> Subnet masks
* We must not having overlaping CIDR blocks. Else Azure wont allow you to connect to the IPs
* Rest all IP adderess are `Public IP Address`

* To connect to VM from internet to a Private cluster, we need Private IP (non-routable address) is required.
* To connect to VM from internet to a Public cluster, we need Public IP (routable address) is required.

* Create VNET --> 
* Azure has blocked 5 Addressed for itself in every Subnet. e.g: In CIDR block  192.168.0.0/23 : 512



