
# [Day-02]()

## Networking
 * Virtual Network
 * LoadBalancer
 * VPN Gateway
 * Application Gateway
 * Current Deivery Network

### Azure Virtual Network (Azure VN)
* VN  --> Subnets (split it into segments)
* traffic can be controlled at VN/Subnet label.
* network filtering can be done through nsg/asg(application security groups)

<img src="https://user-images.githubusercontent.com/24938159/116216134-eb879980-a765-11eb-9009-eb0083c59718.png" width="300">    <img src="https://user-images.githubusercontent.com/24938159/116222644-694ea380-a76c-11eb-9ee2-83997fab3cee.png"  width="400">

<img src="https://user-images.githubusercontent.com/24938159/116223629-57213500-a76d-11eb-89b4-041f56332d8e.png" width="500">

**Application Gateway :**
 * Its a high-performance Loadbalancer
 * Mainly for Web-traffic load balancer
 * It has a **Web Application Firewall** (WAF)
 * SSL Termination 
 * Host & Path based routing of Traffic

<img src="https://user-images.githubusercontent.com/24938159/116225586-a5cfce80-a76f-11eb-94ad-45b1e8261d5d.png" width="500" >

 **Content Delivery Network (CDN) :**
  * Deliver web content to user (To the near by zones)
  * This is required to minimize latency
  * POP(Point of Presence) Location 

 
<img src="https://user-images.githubusercontent.com/24938159/116225406-686b4100-a76f-11eb-8f84-c5b703a51344.png" width="500" >


### Availability-Set Vs Availability-Zone:

|Availability-Set|Availability-Zone|
|----------------|-----------------|
|Logical groupnig of VMs in a DC (Central India)| Physical separation of VMs in Different Zones (Central & East India)|
|![image](https://user-images.githubusercontent.com/24938159/113497618-6ffa4a00-9523-11eb-8fb0-8ea171c9b252.png)| <img src="https://user-images.githubusercontent.com/24938159/113497590-27db2780-9523-11eb-8a5b-082dde44f6e0.png" width="500">|

### Scalesets: 

* Consist of identically configured, load balanced VMs.
* Support manual, scheduled and automatic scaling.
* Automatically distributes VMs across fault and update domains.
* Simplicity: All VM instances are created using the same based OS
* Load balancer support: layer 4 and layer 7
* High availability: multiple instances of the same workload
* Autoscaling: the number of instances adjusts dynamically based on demand
* Scalability: up to 1,000 VM instances (600 when using custom images)


| Vertical Scaling  | Horizontal Scaling |
|------------|------------------|
|![image](https://user-images.githubusercontent.com/24938159/113602336-1c414b00-9660-11eb-843e-ec628c0603da.png)| ![image](https://user-images.githubusercontent.com/24938159/113602419-34b16580-9660-11eb-9935-6055f564519a.png)|
| Requires Downtime bcz of Hardware upgrade | No Downtime as new replica VM will be deployed|

* Enabling Scale-set requires registration of 2 services of Azure-Monitor : `microsoft.insights` & `microsoft.alertmanagement`
* Subscription --> resource-providers --> search for above & then register. 
* 

> ### Note:
* `Get-AzResourceGroup | Where-Object {$_.ResourceGroupName –eq 'hp-*'}`

![image](https://user-images.githubusercontent.com/24938159/113497400-68d23c80-9521-11eb-8027-5bde83755cce.png)
