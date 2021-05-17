
## Azure App service Types
  * Azure App Service is a fully managed web hosting service for building web apps. 
  * It is to Quickly build web application in cloud using any framework/language. 
  * Easy migration to next environment with minimum downtime even in production environment.
  * All types of App Services would require a `App Service Plan`, which will spin up a managed VM for the code to run.
  
**Types of Azure App Services:**
1. Web Apps
2. Mobile Apps
3. Logic Apps
4. API Apps

## App service  plan
  - Underlying Infra (It can be one or more VMs)
  - PaaS, no patches, no updates, no OS
  - No RDP
  - No changes can be done to the underlying infra
  
  - Scaling of ASP. It goes ahead and add more VMs into the ASP with same config
  - Atleast one instance will keep running in your App service plan. You cant have App svc plan with zero instances.
  - Benefits of app services
	- Multiple language support
	- Optimize for devops with integration support with azure devops, github, VSTS, etc.

Steps
-------
1. Create an App service plan (selecting the infra)
2. Create a web app1 on ASP
3. Create an actual webapp on your local machine, test 
4. Deploy web app (from local machine) to azure web app on app svc plan.


ACUs: Azure compute units
  - ACU is a combination of CPU/IOPS/Network Bandwidth
  - 100 ACUs ~ 1 core
  - You pay for every ACU


Scale out steps
----------------
0. I want to add more instanaces in ASP
1. An instance will be created
2. All the apps which are running on ASP will also be deployed on new instance.
3. The app will be added to the load balancer.

Scale out - adding more VMs with exactly same config and apps
Scale in - removing the VMs

Scalability - you can handle higher load
HA - If I have atleast 2 VMs, this means if one VM goes down, my app is still running.

Deployment slots
----------------
- copy of production environment
- Instead of deploying a newer version of app directly in prod, you can depploy to lower env in a slot
- Do the sanity testing (using slot)
- Once you confirm everything working fine, you move to prod (by doing a swap between staging slot and prod slot)
- Once the work of staging slot is done, MAKE SURE to delete the staging slot.

- Benefits
   - Maintenance window is very small, because you are just doing a swap
   - I can do sanity testing before putting my app for end users
   - In case of problem, I can also rollback


- If you have multiple environments (dev/preprod/prod)
  - You should have diff App svc plan for each environments

- A/B Testing
-------------
I can divert 50% of traffic to older version and 50% of traffic to newer version.
- Go to deployment slots --> Mention the traffic for each slot


App Svc plan
   - Auto scaling /manual scaling
   - Web App
     - Slots
     - Traffic %
     - Performance testing

Q. How to block a particular IP?
A. App Svc> Networking > Access restrictions -> Block the IP ADDRESS
