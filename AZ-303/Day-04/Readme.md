
Hub & Spoke:
````````````
* allow forwarded traffic from Vnet01 --> vnet2 & Vnet01 --> vnet3
* VM0 :- configure as Router
	-> ip-forwarding enable
	-> Install software packages (remote access feature & enable routing)
* Vnet2 :- UDR route at vnet2
	-> create Route table (in vnet2)
	-> Add route Rule (in vnet2)
	-> atch subnet (vnet01)
* Vnet2 :- UDR route at vnet3
	-> create Route table (in vnet3)
	-> Add route Rule (in vnet3)
	-> atch subnet (vnet01)
	->
* Test traffic with Network Watcher

	
azure LoadBalancer:
``````````````````
	 loadbalance in a single Vnet
* Create Azure LB
	 zone redudant
* Assign public ip with dns name
* Add backend pool: pool of resources to be added
	-> Vnet01 : vm0 & vm1
* add health probe
* create LB rules:
	-> Rule1 : 
	-> Session persistance
* Test LB public IP for loadbalancing. 

Application Gateway:
````````````````````
	 loadbalance across multiple vnets, but not in diff regions
	 `Special Subnet` is required for gateway. this subnet will be treated as DMZ subnet to segregate the traffic from target subnets. 
	 It has firewall (WAF/WAF2).
	 Autoscalling feature of gateway
	 Chose all zones, as we will distribute
* create separate subnet
* assign new public ip address name
* add backend-pool 
* Add target endpoints i.e vm2 & vm3. It LB across diff regions. 
* add routing rules:
	-> Rule1: 
		Add listener: 
			Http/Https (upload certificate)
			Public ip
			Multisite : xyz.com & abc.com / path 
	 

2. App gateway
Regional
Layer7 (WAF)
Path based routing
SSL Termination

3. Azure traffic manager (ATM):
``````````````````````````````
`Geo-location`
DNS to load balance
* assign public-ip to all VMS:
	VM -> subnet -> nic0 -> ipconfig -> assign public ip (pip-1/2/3)
	Assign a dns name to each pip.
* ATM Config, add backend-pool 
* Assign target end point i.e dns name of each vm-pip 
* assign weightage to all vms. i.e 40-60 load balance will happen if assigned weightage like that.


4. Azure front door:
````````````````````
Geo-location
Layer 7 load balancer (WAF)
Path based routing
WAF
* Add Front-end Domain : A name to FD
* Assign backend pool:
	* backend-pool-01: 
		- add 1st backend hostname (of VM), ip & weightage
		- add 2nd backend hostname (of VM), ip & weightage
	* Path: /
	* Protocol : http
	* backend-pool-02:
	* Path: /
	* Protocol: 
* Routing Rule:
	* Rule-1: 
		* 

VPN Gateway/ Virtual Network Gateway:
`````````````````````````````````````
* for connection betwn 2 vnets. 
* `Subnet Gateway` is required at each Vnets. It acts as DNZ env.
* 2 subnet gateways will be created at both vnets.
* then a ipsec tunnel will be created betwn subnet gateways. acts a bridge betwn vnets. it provides a secure tunnel.
* ipsec tunnel uses IKE(internet Key encryption) to secure the packets.
	vnet-vnet conn: between 2 Vnets in Azure
	Site-to-sire Conn: Azure to On-Prem connection.
		* VNE1: 
			vpn-gw1 
			Local_nw_gateway (info of remote vnet)
			site-2-site-vpn-connection: vpn-gw1, lgnvnet1gw1
		* VNET2:
			vpn-gw2
