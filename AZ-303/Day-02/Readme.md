
# [Day-02]()

### Availability-Set Vs Availability-Zone:

|Availability-Set|Availability-Zone|
|----------------|-----------------|
|Logical groupnig of VMs in a DC (Central India)| Physical separation of VMs in Different Zones (Central & East India)|
|![image](https://user-images.githubusercontent.com/24938159/113497618-6ffa4a00-9523-11eb-8fb0-8ea171c9b252.png)| ![image](https://user-images.githubusercontent.com/24938159/113497590-27db2780-9523-11eb-8a5b-082dde44f6e0.png)|



### Scalesets: 

* Consist of identically configured, load balanced VMs.
* Support manual, scheduled and automatic scaling.
* Automatically distributes VMs across fault and update domains.

| Vertical Scaling  | Horizontal Scaling |
|------------|------------------|
|![image](https://user-images.githubusercontent.com/24938159/113602336-1c414b00-9660-11eb-843e-ec628c0603da.png)| ![image](https://user-images.githubusercontent.com/24938159/113602419-34b16580-9660-11eb-9935-6055f564519a.png)|
| Requires Downtime bcz of Hardware upgrade | No Downtime as new replica VM will be deployed|





![image](https://user-images.githubusercontent.com/24938159/113497400-68d23c80-9521-11eb-8027-5bde83755cce.png)
